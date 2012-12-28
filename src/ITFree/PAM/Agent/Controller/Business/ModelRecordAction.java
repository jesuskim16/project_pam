package ITFree.PAM.Agent.Controller.Business;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ModelRecordAction {	
				
		@RequestMapping("/modelRecord_list.do")
		protected ModelAndView modelRecord_List(HttpServletRequest requset,
				HttpServletResponse response) throws Exception {
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/agent/business/modelRecord_list.jsp");
			mav.addObject("title_name","PAM::모델별실적");
			return mav;
		}
}
