package ITFree.PAM.Seller.Controller.Client;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ITFree.PAM.Common.Model.ResultDto;
import ITFree.PAM.Seller.Model.Client.ClientInfoDto;
import ITFree.PAM.Seller.Model.Client.ClientInfoDao;
import ITFree.PAM.Seller.Model.Client.ClientRegDao;
import ITFree.PAM.Seller.Model.Client.CustPageDto;
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
	public String clientList(@ModelAttribute CustPageDto p, Model model, HttpSession session, ClientInfoDto CIDto){
		List<ModelDto> modelInfo = cRegDao.getModelInfo();	//모델명
		List<PriceDto> priceInfo = cRegDao.getPriceInfo();	//요금제		
		
		String ssBrc_id = (String)session.getAttribute("brc_id");
		p.setTotalCount(clientInfoDao.readCount(ssBrc_id));
		p.setBrc_id(ssBrc_id);
		if(p.getPg()==0)p.setPg(1);
		
		List<ClientInfoDto> ciList = clientInfoDao.clientList(p);	//고객리스트		
		
		log.debug("--ClientList"+ciList);		
		model.addAttribute("title_name","PAM::고객정보");
		model.addAttribute("ciList",ciList);
		model.addAttribute("modelInfo",modelInfo);
		model.addAttribute("priceInfo",priceInfo);
		model.addAttribute("paging",p);
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
