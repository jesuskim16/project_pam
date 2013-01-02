package ITFree.PAM.Agent.Controller.Business;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SalesRcdAct {	
			
		@RequestMapping("/salesRcd.do")
		protected ModelAndView SalesRecord_List(HttpServletRequest requset,
				HttpServletResponse response) throws Exception {
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/agent/business/salesRec.jsp");
			mav.addObject("title_name","PAM::판매점실적");
			return mav;
		}
}
