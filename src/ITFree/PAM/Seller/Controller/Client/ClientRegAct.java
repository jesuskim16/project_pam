package ITFree.PAM.Seller.Controller.Client;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Seller.Model.Client.ClientInfoDto;
import ITFree.PAM.Seller.Model.Client.ClientRegDao;
import ITFree.PAM.Seller.Model.Client.ClientRegDto;
import ITFree.PAM.Seller.Model.Client.ModelDto;
import ITFree.PAM.Seller.Model.Client.PriceDto;

@Controller
public class ClientRegAct {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	private ClientRegDao cRegDao;
	
	@RequestMapping("/clientInsert.do")
	protected ModelAndView clientInsert(@ModelAttribute ClientInfoDto clientDto, Model model ) {
		
		List<ModelDto> modelInfo = cRegDao.getModelInfo();
		List<PriceDto> priceInfo = cRegDao.getPriceInfo();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/www/seller/client/clientInsert.jsp");
		mav.addObject("title_name","PAM::고객등록");
		mav.addObject("modelInfo",modelInfo);
		mav.addObject("priceInfo",priceInfo);
		return mav ;
	}
	
	@RequestMapping("/clientInsertAct.do")
	protected ModelAndView clientInsertAction(@ModelAttribute ClientRegDto cRegDto, Model model ) {
		log.debug(cRegDto);
		boolean insert_result = cRegDao.setCustomInfo(cRegDto);
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/www/seller/client/clientView.jsp");
		mav.addObject("title_name","PAM::고객정보");
		
		return mav ;
	}

}
