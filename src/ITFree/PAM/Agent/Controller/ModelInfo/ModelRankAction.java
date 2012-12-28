package ITFree.PAM.Agent.Controller.ModelInfo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ModelRankAction {
				
			@RequestMapping("/modelRank_list.do")
			protected ModelAndView modelRankList(HttpServletRequest requset,
					HttpServletResponse response) throws Exception {
				
				ModelAndView mav = new ModelAndView();
				mav.setViewName("/WEB-INF/www/agent/model/modelRank_list.jsp");
				mav.addObject("title_name","PAM::모델순위");
				return mav;
			}
}
