package ITFree.PAM.Agent.Controller.Business;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Agent.Model.SalesRcd.SalesRcdDao;
import ITFree.PAM.Agent.Model.SalesRcd.SalesRcdDto;
import ITFree.PAM.Agent.Model.SalesRcd.SalesRcdPageDto;

@Controller
public class SalesRcdAct {	
	
	@Autowired
	private SalesRcdDao SRDao;
			
		@RequestMapping("/salesRcd.do")
		protected ModelAndView salesRcd(@ModelAttribute SalesRcdPageDto pageDto) throws Exception {
			if(pageDto.getPg() == 0) pageDto.setPg(1);
			SalesRcdPageDto SRPDto = new SalesRcdPageDto(pageDto.getPg(), 
					SRDao.TotalCount(pageDto), pageDto.getBrc_name(), pageDto.getS_sdate(), pageDto.getS_edate());
			List<SalesRcdDto> BNList = SRDao.getBranchName();
			List<SalesRcdDto> SRList = SRDao.salesRcdList(SRPDto);			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/agent/business/salesRec.jsp");
			mav.addObject("title_name","PAM::판매점실적");
			mav.addObject("BNList" , BNList);
			mav.addObject("SRPDto" , SRPDto);
			mav.addObject("SRList" , SRList);
			return mav;
		}
		

}
