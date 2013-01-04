package ITFree.PAM.Agent.Controller.SalesMgr;

import java.util.List;




import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import sun.util.logging.resources.logging;

import ITFree.PAM.Agent.Model.SalesMgr.SalesDao;
import ITFree.PAM.Agent.Model.SalesMgr.SalesDto;
import ITFree.PAM.Common.Model.ResultDto;
import ITFree.PAM.Common.Model.Board.PageDto;


@Controller
public class SalesInfoAct {
	private Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private SalesDao salesDao;
	
		@RequestMapping("/salesList.do")
		protected ModelAndView salesList(){
			
			List<SalesDto> list = salesDao.salesInfo_list();
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/agent/salesMgr/salesList.jsp");
			mav.addObject("title_name","PAM::판매점정보");
			mav.addObject("list", list);
			
			return mav;
			
			
		}
		
		@RequestMapping("/salesUpdate.do")
		protected ModelAndView salesUpdate(SalesDto salesDto){
			
			boolean update = salesDao.salesUpdate(salesDto);
			
			return new ModelAndView("redirect:salesList.do");
		}
		
		@RequestMapping("/salesDelete.do")
		protected ModelAndView salesDelete(SalesDto salesDto){
			
			log.debug(salesDto);
			
			boolean delete = salesDao.salesDelete(salesDto);
			
			
			
			return new ModelAndView("redirect:salesList.do");
		}
		
		
		

		
}
