package PAM.Seller.Controller.Client;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import PAM.Seller.Model.Client.ClientRegDao;

@Controller
public class ClientRegAct {
	
	@Autowired
	private ClientRegDao clientRegDao;
	
	@RequestMapping("/customInsert.do")
	protected ModelAndView modelRecord_List(HttpServletRequest requset,
			HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/www/agent/business/customInsert.jsp");
		mav.addObject("title_name","PAM::고객등록");
		return mav;
	}
	

}
