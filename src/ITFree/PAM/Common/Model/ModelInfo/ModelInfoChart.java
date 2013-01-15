package ITFree.PAM.Common.Model.ModelInfo;

import java.awt.Font;
import java.util.List;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.springframework.stereotype.Repository;

@Repository
public class ModelInfoChart {

	private int ChartListSize; //List Size
	private String[] ChartName; // List model_name
	private int[][] ChartSalesNumber; //SalesNumber
	
	public JFreeChart ModelInfoChart(List<ModelInfoDto> MIRList) {
		if (!(MIRList == null)) {
			ChartListSize =  MIRList.size(); //Chart Value Size 

			ChartSalesNumber = new int[ChartListSize][1];
			ChartName = new String[ChartListSize];

			//Chart Value Add
			for (int i = 0; i < MIRList.size(); i++) {
				ChartName[i] = MIRList.get(i).getModel_name(); 
				ChartSalesNumber[i][0] = (int) MIRList.get(i).getCnt(); //SalesNumber
			}
		}
		JFreeChart chart = createbarChart();
		
		return chart;
		
	}
	
	private JFreeChart createbarChart() {
		DefaultCategoryDataset data = new DefaultCategoryDataset();
		
		//Chart X Line name  
		String[] subject = {""};
		
		//Chart SalesNumber , SalesRebate SelectBox Value IF 

			for(int row=0; row < ChartSalesNumber.length; row++) {
				for(int col=0; col < ChartSalesNumber[row].length; col++) {
					data.addValue(ChartSalesNumber[row][col], ChartName[row], subject[col]);
				} 
			}

		
		//Chart Type /createBarChart3D/
		JFreeChart chart = 
			ChartFactory.createBarChart3D("","", "", data,PlotOrientation.VERTICAL, true, false, false);
		
		//Chart Font /돋움, BOLD, 15/
		chart.getTitle().setFont(new Font("돋움", Font.BOLD, 15));
		chart.getLegend().setItemFont(new Font("돋움", Font.TRUETYPE_FONT, 11));
		
		CategoryPlot plot = chart.getCategoryPlot();
		Font font = plot.getDomainAxis().getLabelFont();
		
		plot.getDomainAxis().setLabelFont(new Font("돋움", font.getStyle(), font.getSize()));
		plot.getDomainAxis().setTickLabelFont(new Font("돋움", Font.TRUETYPE_FONT, 10));
		
		plot.getRangeAxis().setLabelFont(new Font("돋움", font.getStyle(), font.getSize()));
		plot.getRangeAxis().setTickLabelFont(new Font("돋움", Font.TRUETYPE_FONT, 10));
		return chart;
	}

}
