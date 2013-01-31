package ITFree.PAM.Agent.Controller.Business;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import ITFree.PAM.Agent.Model.ModelRcd.ModelRcdDao;
import ITFree.PAM.Agent.Model.ModelRcd.ModelRcdDto;
import ITFree.PAM.Agent.Model.ModelRcd.ModelRcdPageDto;

@Controller
public class ModelRcdAct {	
		
		@Autowired
		private ModelRcdDao MRDao;
	
		@RequestMapping("/modelRcd.do")
		protected ModelAndView modelRcd(@ModelAttribute ModelRcdDto MRDto, @ModelAttribute ModelRcdPageDto pageDto) throws Exception {
			
			if(pageDto.getPg() == 0)pageDto.setPg(1);			
			ModelRcdPageDto MRPdto = new ModelRcdPageDto(pageDto.getPg(), 
					MRDao.TotalCount(pageDto), MRDao.TotalRevenue(pageDto), pageDto.getModel_code(),pageDto.getS_sdate(),pageDto.getS_edate());
			List<ModelRcdDto> MList = MRDao.getModelName();
			List<ModelRcdDto> mRList = MRDao.modelRcdList(MRPdto);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/agent/business/modelRec.jsp");
			mav.addObject("title_name","PAM::모델별실적");
			mav.addObject("mRList",mRList);
			mav.addObject("MList",MList);
			mav.addObject("MRDto",MRDto);
			mav.addObject("MRPdto",MRPdto);
			return mav;
		}
}
