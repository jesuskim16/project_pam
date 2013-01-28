package ITFree.PAM.Admin.Controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Admin.Model.AdmClient.AdmClientPageDto;
import ITFree.PAM.Admin.Model.AdmClient.M_AdmClientPageDto;
import ITFree.PAM.Admin.Model.AdmClient.S_AdmClientPageDto;
import ITFree.PAM.Admin.Model.AdmPrice.AdmPriceDao;
import ITFree.PAM.Admin.Model.AdmPrice.AdmPriceDto;
import ITFree.PAM.Admin.Model.AdmPrice.AdmPricePageDto;


@Controller
public class AdmPriceAct {
	
	private Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private AdmPriceDao APdao;
	
	@RequestMapping("/admPriceList.do")
	public ModelAndView admPriceList(@ModelAttribute AdmPriceDto APDto , AdmPricePageDto APPDto, ModelAndView mav){
		
		
		if(APPDto.getPg() == 0) APPDto.setPg(1);
		
		AdmPricePageDto PPDto = new AdmPricePageDto(APPDto.getPg(), APdao.TotalCount(APPDto));  
		
		PPDto.setpHtml(getPageHtml(PPDto));
		
		List<AdmPriceDto> list = APdao.AdmPriceList(PPDto);
		
		mav.setViewName("/WEB-INF/www/admin/Price/list.jsp");
		
		mav.addObject("list", list);
		mav.addObject("page",PPDto);
		
		return mav;
	}
	
	//Page HTML처리하는 메소드
		private String getPageHtml(AdmPricePageDto APPDto) {
			APPDto.setUrlName("admPriceList.do");
			StringBuffer pageHtml = new StringBuffer();
			
			long startPage = ((APPDto.getPg()-1) / APPDto.getBlockSize()) * APPDto.getBlockSize() + 1; //시작 페이지값 계산
			long endPage = ((APPDto.getPg()-1) / APPDto.getBlockSize()) * APPDto.getBlockSize() + APPDto.getBlockSize(); // 끝 페이지값 계산

			
			if(APPDto.getPageCount() < endPage) endPage = APPDto.getPageCount(); //끝 페이지가 총 페이지랑 안맞을 경우 10개 단위의 페이징으로 표시하지 않기 위해 값을 할당하는 것
			
			//총 페이징 갯수가 10개 이상일때, 10개 이상 페이지 이동을 했을때 뒤로가기 아이콘을 표시하며, 10개 단위의 이동을 위한 페이지 이동버튼
			if(startPage != 1){
				pageHtml.append(	
								"<td width='18' align='left'><a href='"+APPDto.getUrlName()+"?pg="+(startPage-1)+"'>" +
								"<img src='admin/img/bts.arrow.left02.gif' width='14' height='13' " +
								"</td>" +
								"<td width='18' align='right'>" +
								"<a href='"+APPDto.getUrlName()+"?pg="+(APPDto.getPg()-1)+"'>"  +
								"<img src='admin/img/bts.arrow.left01.gif' width='14' height='13' " +
								" ></a></td>"+
								"<td width='10'>&nbsp;</td>" +
								"<td class='Text_gray2_11px'>");
			}
			
			for(long p = startPage; p <= endPage; p++){
				//현재 페이지가 아닐때(즉 다른페이지로 넘어가야 할 때 링크를 설정해줌.)
				if(p != APPDto.getPg()){
					pageHtml.append("<font class='style2'><a href='"+APPDto.getUrlName()+"?pg=" + p + "'>" + 
									+ p +  "</a></font>&nbsp;");
				// 현재 보고있는 페이지 일경우 	
				}else{
					pageHtml.append("<font color='red'><b>"+p+"</b></font>&nbsp;");
				}
			}
			
			//총 페이징 갯수가 10개 이상일때, 앞으로가기 아이콘을 표시하며, 10개 단위의 이동을 위한 페이지 이동버튼
			if(endPage != APPDto.getPageCount()){
				pageHtml.append("<td width='10'>&nbsp;</td>" +
								"<td width='18' align='right'>" +
								"<a href='"+APPDto.getUrlName()+"?pg="+(APPDto.getPg()+1)+"'>"  +
								"<img src='admin/img/bts.arrow.right01.gif' width='14' height='13' " +
								" ></a></td>"+
								"<td width='18' align='right'>" +
								"<a href='"+APPDto.getUrlName()+"?pg="+(endPage+1)+"'>"  +
								"<img src='admin/img/bts.arrow.right02.gif' width='14' height='13' " +
								" ></a></td>");
			}
			
			//모든 HTML값 설정이 끝난 뒤 모든 문자열을 리턴~
			return pageHtml.toString();
			
		}


}
