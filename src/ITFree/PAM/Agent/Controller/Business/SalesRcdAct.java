package ITFree.PAM.Agent.Controller.Business;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Agent.Model.SalesRcd.SalesRcdDao;
import ITFree.PAM.Agent.Model.SalesRcd.SalesRcdDto;

@Controller
public class SalesRcdAct {	
	
	@Autowired
	private SalesRcdDao SRDao;
			
		@RequestMapping("/salesRcd.do")
		protected ModelAndView salesRcd() throws Exception {
			
			List<SalesRcdDto> BNList = SRDao.getBranchName();
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/agent/business/salesRec.jsp");
			mav.addObject("title_name","PAM::판매점실적");
			mav.addObject("BNList" , BNList);
			return mav;
		}
		

}
