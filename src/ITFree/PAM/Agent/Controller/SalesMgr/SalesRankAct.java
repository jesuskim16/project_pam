package ITFree.PAM.Agent.Controller.SalesMgr;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Agent.Model.SalesRcd.SalesRcdDao;
import ITFree.PAM.Agent.Model.SalesRcd.SalesRcdDto;
import ITFree.PAM.Agent.Model.SalesRcd.SalesRcdPageDto;

@Controller
public class SalesRankAct {
	
	@Autowired
	private SalesRcdDao SRDao;
	
		@RequestMapping("/salesRank.do")
		protected ModelAndView salesRcd(@ModelAttribute SalesRcdPageDto pageDto) throws Exception {
			if(pageDto.getPg() == 0) pageDto.setPg(1);
			SalesRcdPageDto SRPDto = new SalesRcdPageDto(pageDto.getPg(), 
					SRDao.TotalCount(pageDto), pageDto.getBrc_name(), pageDto.getS_sdate(), pageDto.getS_edate());
			List<SalesRcdDto> BNList = SRDao.getBranchName();
			List<SalesRcdDto> SRList = SRDao.salesRcdList(SRPDto);			
			ModelAndView mav = new ModelAndView();

			mav.setViewName("/WEB-INF/www/agent/salesMgr/salesRank.jsp");
			mav.addObject("title_name","PAM::판매점순위");
			mav.addObject("BNList" , BNList);
			mav.addObject("SRPDto" , SRPDto);
			mav.addObject("SRList" , SRList);
			return mav;
		}
}
