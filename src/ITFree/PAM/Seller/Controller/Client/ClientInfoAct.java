package ITFree.PAM.Seller.Controller.Client;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


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

}
