package ITFree.PAM.Seller.Controller.Client;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import ITFree.PAM.Common.Model.ResultDto;
import ITFree.PAM.Seller.Model.Client.ClientInfoDto;
import ITFree.PAM.Seller.Model.Client.ClientInfoDao;
import ITFree.PAM.Seller.Model.Client.ClientRegDao;
import ITFree.PAM.Seller.Model.Client.ModelDto;
import ITFree.PAM.Seller.Model.Client.PriceDto;

@Controller
public class ClientInfoAct { 
	private Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	private ClientInfoDao clientInfoDao;
	
	@Autowired
	private ClientRegDao cRegDao;
	
	@RequestMapping("/clientList.do")
	public String clientList(Model model, HttpSession session, ClientInfoDto CIDto){
		
		List<ModelDto> modelInfo = cRegDao.getModelInfo();
		List<PriceDto> priceInfo = cRegDao.getPriceInfo();
		
		List<ClientInfoDto> ciList = clientInfoDao.clientList((String)session.getAttribute("brc_id"));
		log.debug("--ClientList"+ciList);
		model.addAttribute("title_name","PAM::고객정보");
		model.addAttribute("ciList",ciList);
		model.addAttribute("modelInfo",modelInfo);
		model.addAttribute("priceInfo",priceInfo);
		return "/WEB-INF/www/seller/client/clientList.jsp";
	}
	@RequestMapping("/clientUpdate.do")
	public String clientUpdate(Model model, ClientInfoDto CIDto){
		CIDto.setCust_phone(CIDto.getCust_phone1()+"-"+CIDto.getCust_phone2()+"-"+CIDto.getCust_phone3());
		log.debug("--ClientUpdate_1"+CIDto);		
		boolean update_result = clientInfoDao.clientUpdate(CIDto);
		if(update_result){
			return "redirect:clientList.do"; 
		}else{
			return null;
		}		
	}
	@RequestMapping("/clientDel.do")
	public String clientDel(Model model, long seq){
		log.debug(seq);
		boolean del_result = clientInfoDao.clientDel(seq);			
		if(del_result){			
			return "redirect:clientList.do";
		}else{			
			ResultDto result = new ResultDto();
			result.setMsg("삭제가 실패하였습니다.");
			result.setUrl("javascript:history.back()");
			model.addAttribute("result",result);
			return "/WEB-INF/www/result.jsp";		
		}
	}
}
