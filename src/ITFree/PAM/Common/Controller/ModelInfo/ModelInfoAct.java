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
		protected ModelAndView modelRank(@ModelAttribute ModelInfoDto MIDto) throws Exception {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/common/modelInfo/modelRank.jsp");			
			mav.addObject("title_name","PAM::모델정보");
			mav.addObject("MIDto", MIDto);
			return mav;
		}		
}
