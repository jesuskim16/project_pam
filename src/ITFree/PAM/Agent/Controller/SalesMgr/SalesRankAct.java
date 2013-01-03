package ITFree.PAM.Agent.Controller.SalesMgr;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SalesRankAct {
					
		@RequestMapping("/salesRank.do")
		protected ModelAndView salesRankList(HttpServletRequest requset,
				HttpServletResponse response) throws Exception {
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/agent/salesMgr/salesRank.jsp");
			mav.addObject("title_name","PAM::판매점순위");
			return mav;
		}
}
