package ITFree.PAM.Agent.Controller.Business;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Common.Model.Board.PageDto;
import ITFree.PAM.Seller.Model.Client.ClientInfoDao;
import ITFree.PAM.Seller.Model.Client.ClientInfoDto;
import ITFree.PAM.Seller.Model.Client.ClientInfoPageDto;

@Controller
public class ModelRcdAct {	
		
		@Autowired
		private ClientInfoDao cIDao;
	
		@RequestMapping("/modelRcd.do")
		protected ModelAndView modelRcd(@ModelAttribute ClientInfoDto cIDto, @ModelAttribute ClientInfoPageDto pageDto) throws Exception {
			if(pageDto.getPg() == 0)pageDto.setPg(1);			
			ClientInfoPageDto CIPdto = new ClientInfoPageDto(pageDto.getPg(), 
					  cIDao.TotalCount(pageDto),pageDto.getModel_code(),pageDto.getS_sdate(),pageDto.getS_edate());
			System.out.println(CIPdto);
			List<ClientInfoDto> MList = cIDao.getModelName();
			List<ClientInfoDto> mRList = cIDao.modelRcdList(CIPdto);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/agent/business/modelRec.jsp");
			mav.addObject("title_name","PAM::모델별실적");
			mav.addObject("mRList",mRList);
			mav.addObject("MList",MList);
			mav.addObject("cIDto",cIDto);
			mav.addObject("CIPdto",CIPdto);
			return mav;
		}
}
