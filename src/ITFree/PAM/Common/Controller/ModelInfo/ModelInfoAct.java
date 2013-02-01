package ITFree.PAM.Common.Controller.ModelInfo;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Common.Model.ModelInfo.ModelInfoChart;
import ITFree.PAM.Common.Model.ModelInfo.ModelInfoDao;
import ITFree.PAM.Common.Model.ModelInfo.ModelInfoPageDto;
import ITFree.PAM.Common.Model.ModelInfo.ModelInfoDto;
import ITFree.PAM.Common.Model.ModelInfo.ModelInfoRankPageDto;

@Controller
public class ModelInfoAct {
	
	@Autowired
	private ModelInfoDao MIDao;
	
	@Autowired
	private ModelInfoChart MIC;	
		
		@RequestMapping("/modelList.do")
		protected ModelAndView modelList(@ModelAttribute ModelInfoPageDto pageDto, HttpSession session) throws Exception {
			if(pageDto.getPg() == 0)pageDto.setPg(1);
			ModelInfoPageDto MIPDto = new ModelInfoPageDto(pageDto.getPg() , MIDao.ModelInfoTotalCount());
			List<ModelInfoDto> MIList = MIDao.modelList(MIPDto);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/common/modelInfo/modelList.jsp");			
			mav.addObject("title_name","PAM::모델정보");
			mav.addObject("brc_lev", session.getAttribute("brc_lev"));		//레벨(1:대리점, 2:판매점)
			mav.addObject("MIList",MIList);
			mav.addObject("MIPDto",MIPDto);
			return mav;
		}
		
		@RequestMapping("/modelRank.do")
		protected ModelAndView modelRank(@ModelAttribute ModelInfoRankPageDto pageRDto, HttpServletResponse response,HttpSession session) throws Exception {
			if(pageRDto.getPg() == 0)pageRDto.setPg(1);
			ModelInfoRankPageDto MIRPDto = new ModelInfoRankPageDto(pageRDto.getPg() , MIDao.ModelInfoRankTotalCount(pageRDto),
								pageRDto.getS_sdate(), pageRDto.getS_edate());
			MIRPDto.setS_sdate(pageRDto.getS_sdate());
			MIRPDto.setS_edate(pageRDto.getS_edate());
			List<ModelInfoDto> MIRList = MIDao.modelRank(MIRPDto);

			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/common/modelInfo/modelRank.jsp");			
			mav.addObject("title_name","PAM::모델순위");
			mav.addObject("brc_lev", session.getAttribute("brc_lev"));		//레벨(1:대리점, 2:판매점)
			mav.addObject("MIRList", MIRList);
			mav.addObject("MIRPDto", MIRPDto);
			mav.addObject("chart","mRbarChartCreator.do");
			return mav;
		}
		
		@RequestMapping("/mRbarChartCreator.do")
		protected void barChartCreator(@ModelAttribute ModelInfoRankPageDto pageRDto, HttpServletResponse response)
				throws ServletException, IOException {
			response.setContentType("image/png");
			OutputStream out = response.getOutputStream();
			List<ModelInfoDto> MIRList = MIDao.modelTotalRank(pageRDto);
			JFreeChart chart = MIC.ModelInfoChart(MIRList);

			try {
				ChartUtilities.writeChartAsPNG(out, chart, 350, 340);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (out != null)try {out.close();} catch (Exception e) {}
			}
		}

}
