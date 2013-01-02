package ITFree.PAM.Common.Controller.ModelInfo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ModelInfoAct {
		
		@RequestMapping("/modelList.do")
		protected ModelAndView modelRegisterList(HttpServletRequest requset,
				HttpServletResponse response) throws Exception {
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/agent/model/modelRegister_list.jsp");
			mav.addObject("title_name","PAM::모델정보");
			return mav;
		}
}
