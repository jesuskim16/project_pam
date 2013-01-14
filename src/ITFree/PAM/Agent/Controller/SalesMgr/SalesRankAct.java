package ITFree.PAM.Agent.Controller.SalesMgr;

import java.awt.Font;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Agent.Model.SalesMgr.SalesDao;
import ITFree.PAM.Agent.Model.SalesMgr.SalesDto;
import ITFree.PAM.Agent.Model.SalesMgr.SalesPageDto;

@Controller
public class SalesRankAct {

	private Logger log = Logger.getLogger(getClass());

	@Autowired
	private SalesDao salesDao;
	private int ChartListSize;
	
	String[] ChartName = new String[10];
	
	private String ChartSalesRankSelectBox;
	private int[][] ChartSalesNumber; 
	private int[][] ChartSalesRebate;
	private String ChartSubjectR;


	@RequestMapping("/salesRank.do")
	protected ModelAndView salesRank(@ModelAttribute SalesPageDto pageDto,
			SalesDto salesDto, ModelAndView mav, String SalesRankSelectBox,
			String brc_name, String salesnumber, String salesrebate)
			throws Exception {

		if (pageDto.getPg() == 0)
			pageDto.setPg(1);
		SalesPageDto SPDto = new SalesPageDto(pageDto.getPg(),
				salesDao.TotalCount(pageDto), pageDto.getBrc_name(),
				pageDto.getS_sdate(), pageDto.getS_edate());

		List<SalesDto> list = salesDao.salesRankList(SPDto, SalesRankSelectBox);
		
		
		if (!(list == null)) {
			ChartListSize =  list.size();
			ChartSalesRankSelectBox = SalesRankSelectBox;
			ChartSalesNumber = new int[ChartListSize][1];
			ChartSalesRebate = new int[ChartListSize][1];
					
			for (int i = 0; i < list.size(); i++) {
				ChartName[i] = list.get(i).getBrc_name();
				ChartSalesNumber[i][0] = Integer.parseInt(list.get(i).getSalesnumber());
				ChartSalesRebate[i][0] = Integer.parseInt(list.get(i).getSalesrebate());
			}

		}
		
		mav.setViewName("/WEB-INF/www/agent/salesMgr/salesRank.jsp");
		mav.addObject("title_name", "PAM::판매점순위");
		mav.addObject("list", list);
		mav.addObject("page", SPDto);
		mav.addObject("chart", "barChartCreator.do");
		mav.addObject("SRSB", SalesRankSelectBox);
		return mav;
	}
	

	@RequestMapping("/barChartCreator.do")
	protected void barChartCreator(HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("image/png");
		OutputStream out = response.getOutputStream();

		try {
			JFreeChart chart = createbarChart();
			ChartUtilities.writeChartAsPNG(out, chart, 500, 340);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (out != null)
				try {
					out.close();
				} catch (Exception e) {
				}
		}
	}

	private JFreeChart createbarChart() {
			DefaultCategoryDataset data = new DefaultCategoryDataset();
			
			String[] subject = {""};
			
			if(ChartSalesRankSelectBox.equals("2")){
				for(int row=0; row < ChartSalesRebate.length; row++) {
					for(int col=0; col < ChartSalesRebate[row].length; col++) {
						data.addValue(ChartSalesRebate[row][col], ChartName[row], subject[col]);
					} 
				}
				
			} else {
				for(int row=0; row < ChartSalesNumber.length; row++) {
					for(int col=0; col < ChartSalesNumber[row].length; col++) {
						data.addValue(ChartSalesNumber[row][col], ChartName[row], subject[col]);
					} 
				}
			}
			
			
			JFreeChart chart = 
				ChartFactory.createBarChart3D("","", "", data,PlotOrientation.VERTICAL, true, false, false);
			
			chart.getTitle().setFont(new Font("돋움", Font.BOLD, 15));
			chart.getLegend().setItemFont(new Font("돋움", Font.BOLD, 15));
			
			CategoryPlot plot = chart.getCategoryPlot();
			Font font = plot.getDomainAxis().getLabelFont();
			
			plot.getDomainAxis().setLabelFont(new Font("돋움", font.getStyle(), font.getSize()));
			plot.getDomainAxis().setTickLabelFont(new Font("돋움", Font.BOLD, 10));
			
			plot.getRangeAxis().setLabelFont(new Font("돋움", font.getStyle(), font.getSize()));
			plot.getRangeAxis().setTickLabelFont(new Font("돋움", Font.BOLD, 10));
			return chart;
		}


}