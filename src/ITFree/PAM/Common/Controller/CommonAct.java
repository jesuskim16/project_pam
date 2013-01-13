package ITFree.PAM.Common.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommonAct {
	private Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping("/main.do")
	protected ModelAndView main(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		HttpSession session=request.getSession();
		int level = (int) session.getAttribute("brc_lev");
		log.debug("::main::"+level);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/www/main.jsp");
		mav.addObject("title_name","PAM::MainPage");
		mav.addObject("brc_lev",level);
		return mav;
	}
	@RequestMapping("/admMain.do")
	public String admMain(){
		return "/WEB-INF/www/admin/main.jsp";
	}
}
