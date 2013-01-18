package ITFree.PAM.Common.Controller.Login;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Common.Model.Login.LoginDao;
import ITFree.PAM.Common.Model.Login.LoginDto;

@Controller
public class LoginAct {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	private LoginDao branchDao;
	
	@RequestMapping("/login.do")
	protected ModelAndView login(ModelAndView mav){
		mav.setViewName("/WEB-INF/www/login.jsp");
		mav.addObject("title_name","PAM::로그인");
		return mav;
	}

	@RequestMapping("/loginAction.do")
	protected ModelAndView loginAction(String brc_id, String password, HttpSession session, HttpServletRequest request){	
		
		LoginDto branchDto = new LoginDto();
		branchDto.setBrc_id(brc_id);
		branchDto.setPassword(password);		
		branchDto = branchDao.getLoginInfo(branchDto);
		ModelAndView mav = new ModelAndView();		
		if (branchDto != null && branchDto.getBrc_name() != null) {			
			session.setAttribute("brc_id", branchDto.getBrc_id());
			session.setAttribute("brc_name", branchDto.getBrc_name());
			session.setAttribute("brc_lev", branchDto.getBrc_lev());	
			branchDto.setIp(request.getRemoteAddr());
			branchDao.setLoginLog(branchDto);
			mav.setViewName("redirect:main.do");			
		} else {
			mav.setViewName("redirect:login.do");			
		}
		return mav;
	}
	
	@RequestMapping("/logout.do")
	protected ModelAndView logout(HttpSession session, ModelAndView mav) throws Exception {
		//HttpSession session=request.getSession();
		
		session.removeAttribute("brc_id");
		session.removeAttribute("brc_name");
		session.removeAttribute("brc_lev");
				
		mav.setViewName("redirect:login.do");		
		return mav;
	}
	
}

