package ITFree.PAM.Auth;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;


public class Auth implements Filter{

	private Logger log = Logger.getLogger(this.getClass());
	
	
	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		log.debug("############ AuthAction 수행 중!!!!");
		
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpSession session = httpRequest.getSession(false);
	    if(excludeUrl(httpRequest , session)){
	        chain.doFilter(request, response); //걸러내는 URI일 경우 요청값 그대로 처리
	      }else{
	    	    RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/www/common/result.jsp");
				request.setAttribute("msg", "로그인 후 사용가능합니다.");
				request.setAttribute("url", "login.do");
				
				dispatcher.forward(request, response);
	    }
	
	}
	
	//특정 URI 를 걸러내는 메소드
	private boolean excludeUrl(HttpServletRequest request ,HttpSession session) {
		
		String uri = request.getRequestURI().toString().trim();
		if(session.getAttribute("brc_lev") == null){
			if (uri.startsWith("/project_pam/login.do") || uri.startsWith("/project_pam/loginAction.do")) {
				return true;
			} else {
				return false;
			}
		}else{
			return true;
		}

	}

	public void init(FilterConfig arg0) throws ServletException {
	}

}
