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
		
	    if(excludeUrl(httpRequest)){
	        chain.doFilter(request, response); //걸러내는 URI일 경우 요청값 그대로 처리
	      }else{
	    	    RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/www/common/result.jsp");
				request.setAttribute("msg", "로그인 후 사용가능합니다.");
				request.setAttribute("url", "login.do");
				
				dispatcher.forward(request, response);
	    }
	
	}
	
	private boolean excludeUrl(HttpServletRequest request) {		
		String uri = request.getRequestURI().toString().trim();
		if (uri.startsWith("/project_pam/login.do")) {
			return true;
		} else {
			return false;
		}
	}

	public void init(FilterConfig arg0) throws ServletException {
	}

}
