package ITFree.PAM.Agent.Controller.SalesMgr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Agent.Model.SalesMgr.SalesDao;
import ITFree.PAM.Agent.Model.SalesMgr.SalesDto;
import ITFree.PAM.Agent.Model.SalesMgr.SalesInfoPageDto;


@Controller
public class SalesInfoAct {
	private Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private SalesDao salesDao;
	
		@RequestMapping("/salesList.do")
		protected ModelAndView salesList(@ModelAttribute SalesInfoPageDto sipDto, HttpSession session,
				ModelAndView mav){
			if(sipDto.getPg() == 0) sipDto.setPg(1); 
			
			SalesInfoPageDto SIPDto = new SalesInfoPageDto(sipDto.getPg(), salesDao.InfoTotalCount(sipDto));
			
			SIPDto.setAttach_id((String) session.getAttribute("brc_id"));
			
			List<SalesDto> list = salesDao.salesList(SIPDto);
			
			mav.setViewName("/WEB-INF/www/agent/salesMgr/salesList.jsp");
			
			mav.addObject("title_name","PAM::판매점정보");
			mav.addObject("list", list);
			mav.addObject("page",SIPDto);
			
			return mav;
		}
		
		@RequestMapping("/salesUpdate.do")
		protected ModelAndView salesUpdate(SalesDto salesDto, SalesInfoPageDto spDto){
			
			boolean update = salesDao.salesUpdate(salesDto);
			if(spDto.getPg() == 0) spDto.setPg(1); 
			return new ModelAndView("redirect:salesList.do?pg="+spDto.getPg());
		}
		
		@RequestMapping("/salesDelete.do")
		protected ModelAndView salesDelete(SalesDto salesDto, SalesInfoPageDto spDto){
			
			boolean delete = salesDao.salesDelete(salesDto);
			if(spDto.getPg() == 0) spDto.setPg(1); 
			return new ModelAndView("redirect:salesList.do?=pg"+spDto.getPg());
		}
		
		
		

		
}
