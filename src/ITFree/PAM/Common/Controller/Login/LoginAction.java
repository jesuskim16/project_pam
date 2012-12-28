package ITFree.PAM.Common.Controller.Login;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Common.Model.Login.LoginDao;
import ITFree.PAM.Common.Model.Login.LoginDto;


  
@Controller
public class LoginAction {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	private LoginDao branchDao;
	
	@RequestMapping("/login.do")
	protected ModelAndView login(HttpServletRequest requset,
			HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/www/login.jsp");
		mav.addObject("title_name","PAM::LoginPage");
		return mav;
	}

	@RequestMapping("/loginAction.do")
	protected ModelAndView loginAction(HttpServletRequest request,
			HttpServletResponse response) throws Exception {	
		
		String id = request.getParameter("brc_id");
		String pw = request.getParameter("password");
		LoginDto branchDto = new LoginDto();
		branchDto.setBrc_id(id);
		branchDto.setPassword(pw);
		log.debug("::loginAction_1::"+branchDto);
		branchDto = branchDao.getLoginInfo(branchDto);
		ModelAndView mav = new ModelAndView();
		log.debug("::loginAction_2::"+branchDto);
		if (branchDto != null && branchDto.getBrc_name() != null) {
			HttpSession session=request.getSession();
			session.setAttribute("brc_id", branchDto.getBrc_id());
			session.setAttribute("brc_name", branchDto.getBrc_name());
			session.setAttribute("brc_lev", branchDto.getBrc_lev());
			mav.setViewName("redirect:main.do");			
		} else {
			mav.setViewName("redirect:login.do");			
		}
		return mav;
	}
	
	@RequestMapping("/logout.do")
	protected ModelAndView logout(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		HttpSession session=request.getSession();
		
		session.removeAttribute("brc_id");
		session.removeAttribute("brc_name");
		session.removeAttribute("brc_lev");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/www/login.jsp");
		mav.addObject("title_name","PAM::LoginPage");
		return mav;
	}
}

