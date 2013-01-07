package ITFree.PAM.Agent.Controller.SalesMgr;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




import ITFree.PAM.Agent.Model.SalesMgr.SalesPageDto;
import ITFree.PAM.Agent.Model.SalesMgr.SalesDao;
import ITFree.PAM.Agent.Model.SalesMgr.SalesDto;


@Controller
public class SalesInfoAct {
	private Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private SalesDao salesDao;
	
		@RequestMapping("/salesList.do")
		protected ModelAndView salesList(@ModelAttribute SalesPageDto spDto){
			if(spDto.getPg() == 0) spDto.setPg(1); 
			
			
			SalesPageDto p = new SalesPageDto(spDto.getPg(), salesDao.readCount());			
			List<SalesDto> list = salesDao.salesList(p);
			
			
			
			ModelAndView mav = new ModelAndView();
			
			mav.setViewName("/WEB-INF/www/agent/salesMgr/salesList.jsp");
			
			mav.addObject("title_name","PAM::판매점정보");
			mav.addObject("list", list);
			mav.addObject("page",p);
			
			return mav;
			
			
		}
		
		@RequestMapping("/salesUpdate.do")
		protected ModelAndView salesUpdate(SalesDto salesDto, SalesPageDto spDto){
			
			boolean update = salesDao.salesUpdate(salesDto);
			if(spDto.getPg() == 0) spDto.setPg(1); 
			return new ModelAndView("redirect:salesList.do?pg="+spDto.getPg());
		}
		
		@RequestMapping("/salesDelete.do")
		protected ModelAndView salesDelete(SalesDto salesDto, SalesPageDto spDto){
			
			log.debug(salesDto);
			
			boolean delete = salesDao.salesDelete(salesDto);
			if(spDto.getPg() == 0) spDto.setPg(1); 
			return new ModelAndView("redirect:salesList.do?=pg"+spDto.getPg());
		}
		
		
		

		
}
