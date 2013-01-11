package ITFree.PAM.Common.Controller.ModelInfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Common.Model.ModelInfo.ModelInfoDao;
import ITFree.PAM.Common.Model.ModelInfo.ModelInfoPageDto;
import ITFree.PAM.Common.Model.ModelInfo.ModelInfoDto;
import ITFree.PAM.Common.Model.ModelInfo.ModelInfoRankPageDto;

@Controller
public class ModelInfoAct {
	
	@Autowired
	private ModelInfoDao MIDao;
		
		@RequestMapping("/modelList.do")
		protected ModelAndView modelList(@ModelAttribute ModelInfoPageDto pageDto) throws Exception {
			if(pageDto.getPg() == 0)pageDto.setPg(1);
			ModelInfoPageDto MIPDto = new ModelInfoPageDto(pageDto.getPg() , MIDao.ModelInfoTotalCount());
			List<ModelInfoDto> MIList = MIDao.modelList(MIPDto);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/common/modelInfo/modelList.jsp");			
			mav.addObject("title_name","PAM::모델정보");
			mav.addObject("MIList",MIList);
			mav.addObject("MIPDto",MIPDto);
			return mav;
		}
		
		@RequestMapping("/modelRank.do")
		protected ModelAndView modelRank(@ModelAttribute ModelInfoRankPageDto pageRDto) throws Exception {
			if(pageRDto.getPg() == 0)pageRDto.setPg(1);
			ModelInfoRankPageDto MIRPDto = new ModelInfoRankPageDto(pageRDto.getPg() , MIDao.ModelInfoRankTotalCount(pageRDto),
								pageRDto.getS_sdate(), pageRDto.getS_edate());
			MIRPDto.setS_sdate(pageRDto.getS_sdate());
			MIRPDto.setS_edate(pageRDto.getS_edate());
			List<ModelInfoDto> MIRList = MIDao.modelRank(MIRPDto);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/common/modelInfo/modelRank.jsp");			
			mav.addObject("title_name","PAM::모델정보");
			mav.addObject("MIRList", MIRList);
			mav.addObject("MIRPDto", MIRPDto);
			return mav;
		}		
}
