package ITFree.PAM.Agent.Controller.ModelInfo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ModelRegisterAct {
		
		@RequestMapping("/modelRegister_insert.do")
		protected ModelAndView ModelRegister_insert(HttpServletRequest requset,
				HttpServletResponse response) throws Exception {
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/agent/model/modelRegister_insert.jsp");
			mav.addObject("title_name","PAM::판매점등록");
			return mav;
		}
	
}
