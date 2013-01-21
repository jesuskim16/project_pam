package ITFree.PAM.Admin.Controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.jfree.util.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Admin.Model.AdmClient.AdmClientDao;
import ITFree.PAM.Admin.Model.AdmClient.AdmClientDto;
import ITFree.PAM.Admin.Model.AdmClient.AdmClientPageDto;
import ITFree.PAM.Admin.Model.AdmClient.M_AdmClientPageDto;
import ITFree.PAM.Admin.Model.AdmClient.S_AdmClientPageDto;

import ITFree.PAM.Agent.Model.SalesMgr.SalesRankPageDto;

@Controller
public class AdmClientAct {

	@Autowired
	private AdmClientDao ACdao;
	
	private long Mpg;
	private long Spg;
	private long Cpg;
	
	@RequestMapping("/admClientList.do")
	public ModelAndView admClientList(@ModelAttribute AdmClientPageDto CpageDto,M_AdmClientPageDto MpageDto, 
			S_AdmClientPageDto SpageDto, ModelAndView mav){
		System.out.println("pg1"+MpageDto.getMpg()+":"+SpageDto.getSpg()+":"+CpageDto.getCpg());
		if(MpageDto.getMpg() == 0) MpageDto.setMpg(1);
		if(SpageDto.getSpg() == 0) SpageDto.setSpg(1);
		if(CpageDto.getCpg() == 0) CpageDto.setCpg(1);
		
		
		M_AdmClientPageDto MPDto = new M_AdmClientPageDto(MpageDto.getMpg(), ACdao.MListTotalCount(MpageDto));
		S_AdmClientPageDto SPDto = new S_AdmClientPageDto(SpageDto.getSpg(), ACdao.SListTotalCount(SpageDto));
		AdmClientPageDto CPDto = new AdmClientPageDto(CpageDto.getCpg(), ACdao.CListTotalCount(CpageDto));
		
		MPDto.setpHtml(getMPageHtml(MPDto));
		SPDto.setpHtml(getSPageHtml(SPDto));
		CPDto.setpHtml(getCPageHtml(CPDto));
		
		Mpg = MpageDto.getMpg();
		Spg = SpageDto.getSpg();
		Cpg = CpageDto.getCpg();
		
		
		List<AdmClientDto> managerlist = ACdao.ManagerList(MPDto);
		List<AdmClientDto> saleslist = ACdao.SalesList(SPDto);
		List<AdmClientDto> clientlist = ACdao.AdmClientList(CPDto);
		
		
		mav.setViewName("/WEB-INF/www/admin/client/list.jsp");
		
		mav.addObject("Mlist", managerlist);
		mav.addObject("Slist", saleslist);
		mav.addObject("Clist", clientlist);
		System.out.println("pg1"+MPDto.getMpg()+":"+SPDto.getSpg()+":"+CPDto.getCpg());
		mav.addObject("Mpage", MPDto);
		mav.addObject("Spage", SPDto);
		mav.addObject("Cpage", CPDto);
		
		return mav;
	}
	
	
	//HTML처리하는 메소드
	//Manager
	private String getMPageHtml(M_AdmClientPageDto MPDto) {
		MPDto.setUrlName("admClientList.do");
		StringBuffer pageHtml = new StringBuffer();
		
		long startPage = ((MPDto.getMpg()-1) / MPDto.getBlockSize()) * MPDto.getBlockSize() + 1; //시작 페이지값 계산
		long endPage = ((MPDto.getMpg()-1) / MPDto.getBlockSize()) * MPDto.getBlockSize() + MPDto.getBlockSize(); // 끝 페이지값 계산

		
		if(MPDto.getPageCount() < endPage) endPage = MPDto.getPageCount(); //끝 페이지가 총 페이지랑 안맞을 경우 10개 단위의 페이징으로 표시하지 않기 위해 값을 할당하는 것
		
		//총 페이징 갯수가 10개 이상일때, 10개 이상 페이지 이동을 했을때 뒤로가기 아이콘을 표시하며, 10개 단위의 이동을 위한 페이지 이동버튼
		
			pageHtml.append(	
							"<td width='18' align='left'><a href='"+MPDto.getUrlName()+"?Mpg="+(startPage-1)+"&Spg="+Spg+"?Cpg="+Cpg+"'>" +
							"<img src='admin/img/bts.arrow.left02.gif' width='14' height='13' " +
							"</td>" +
							"<td width='18' align='right'>" +
							"<a href='"+MPDto.getUrlName()+"?Mpg="+(MPDto.getMpg()-1)+"&Spg="+Spg+"&Cpg="+Cpg+"'>"  +
							"<img src='admin/img/bts.arrow.left01.gif' width='14' height='13' " +
							" ></a></td>"+
							"<td width='10'>&nbsp;</td>" +
							"<td class='Text_gray2_11px'>");
		
		
		for(long p = startPage; p <= endPage; p++){
			//현재 페이지가 아닐때(즉 다른페이지로 넘어가야 할 때 링크를 설정해줌.)
			if(p != MPDto.getMpg()){
				pageHtml.append("<font class='style2'><a href='"+MPDto.getUrlName()+"&Mpg=" + p +"&Spg="+Spg+"?Cpg="+Cpg+ "'>" + 
								+ p +  "</a></font>&nbsp;");
			// 현재 보고있는 페이지 일경우 	
			}else{
				pageHtml.append("<font color='red'><b>"+p+"</b></font>&nbsp;");
			}
		}
		
		//총 페이징 갯수가 10개 이상일때, 앞으로가기 아이콘을 표시하며, 10개 단위의 이동을 위한 페이지 이동버튼
		
			pageHtml.append("<td width='10'>&nbsp;</td>" +
							"<td width='18' align='right'>" +
							"<a href='"+MPDto.getUrlName()+"?Mpg="+(MPDto.getMpg()+1)+"&Spg="+Spg+"&Cpg="+Cpg+"'>"  +
							"<img src='admin/img/bts.arrow.right01.gif' width='14' height='13' " +
							" ></a></td>"+
							"<td width='18' align='right'>" +
							"<a href='"+MPDto.getUrlName()+"?Mpg="+(endPage+1)+"&Spg="+Spg+"&Cpg="+Cpg+"'>"  +
							"<img src='admin/img/bts.arrow.right02.gif' width='14' height='13' " +
							" ></a></td>");
		
		
		//모든 HTML값 설정이 끝난 뒤 모든 문자열을 리턴~
		return pageHtml.toString();
		
	}
	//Manager
	
	//Sales
	private String getSPageHtml(S_AdmClientPageDto SPDto) {
		
		SPDto.setUrlName("admClientList.do");
		StringBuffer pageHtml = new StringBuffer();
		
		long startPage = ((SPDto.getSpg()-1) / SPDto.getBlockSize()) * SPDto.getBlockSize() + 1; //시작 페이지값 계산
		long endPage = ((SPDto.getSpg()-1) / SPDto.getBlockSize()) * SPDto.getBlockSize() + SPDto.getBlockSize(); // 끝 페이지값 계산

		
		if(SPDto.getPageCount() < endPage) endPage = SPDto.getPageCount(); //끝 페이지가 총 페이지랑 안맞을 경우 10개 단위의 페이징으로 표시하지 않기 위해 값을 할당하는 것
		
		//총 페이징 갯수가 10개 이상일때, 10개 이상 페이지 이동을 했을때 뒤로가기 아이콘을 표시하며, 10개 단위의 이동을 위한 페이지 이동버튼
		
			pageHtml.append(
							"<td width='18' align='left'><a href='"+SPDto.getUrlName()+"?Mpg="+Mpg+"&Spg="+(startPage-1)+"&Cpg="+Cpg+"'>" +
							"<img src='admin/img/bts.arrow.left02.gif' width='14' height='13' " +
							"</td>" +
							"<td width='18' align='right'>" +
							"<a href='"+SPDto.getUrlName()+"?Mpg="+Mpg+"&Spg="+(SPDto.getSpg()-1)+"&Cpg="+Cpg+"'>"  +
							"<img src='admin/img/bts.arrow.left01.gif' width='14' height='13' " +
							" ></a></td>"+
							"<td width='10'>&nbsp;</td>" +
							"<td class='Text_gray2_11px'>");
		
		
		for(long p = startPage; p <= endPage; p++){
			//현재 페이지가 아닐때(즉 다른페이지로 넘어가야 할 때 링크를 설정해줌.)
			if(p != SPDto.getSpg()){
				pageHtml.append("<font class='style2'><a href='"+SPDto.getUrlName()+"?Mpg="+Mpg+"&Spg=" + p +"&Cpg="+Cpg+"'>" + 
								+ p +  "</a></font>&nbsp;");
			// 현재 보고있는 페이지 일경우 	
			}else{
				pageHtml.append("<font color='red'><b>"+p+"</b></font>&nbsp;");
			}
		}
		
		//총 페이징 갯수가 10개 이상일때, 앞으로가기 아이콘을 표시하며, 10개 단위의 이동을 위한 페이지 이동버튼
		
			pageHtml.append("<td width='10'>&nbsp;</td>" +
							"<td width='18' align='right'>" +
							"<a href='"+SPDto.getUrlName()+"?Mpg="+Mpg+"&Spg="+(SPDto.getSpg()+1)+"&Cpg="+Cpg+"'>"  +
							"<img src='admin/img/bts.arrow.right01.gif' width='14' height='13' " +
							" ></a></td>"+
							"<td width='18' align='right'>" +
							"<a href='"+SPDto.getUrlName()+"?Mpg="+Mpg+"&Spg="+(endPage+1)+"&Cpg="+Cpg+"'>"  +
							"<img src='admin/img/bts.arrow.right02.gif' width='14' height='13' " +
							" ></a></td>");
		
		
		//모든 HTML값 설정이 끝난 뒤 모든 문자열을 리턴~
		return pageHtml.toString();
		
	}
	//Sales
	
	//Client//
		private String getCPageHtml(AdmClientPageDto CPDto) {
			
			CPDto.setUrlName("admClientList.do");
			StringBuffer pageHtml = new StringBuffer();
			
			long startPage = ((CPDto.getCpg()-1) / CPDto.getBlockSize()) * CPDto.getBlockSize() + 1; //시작 페이지값 계산
			long endPage = ((CPDto.getCpg()-1) / CPDto.getBlockSize()) * CPDto.getBlockSize() + CPDto.getBlockSize(); // 끝 페이지값 계산

			
			if(CPDto.getPageCount() < endPage) endPage = CPDto.getPageCount(); //끝 페이지가 총 페이지랑 안맞을 경우 10개 단위의 페이징으로 표시하지 않기 위해 값을 할당하는 것
			
			//10개 이상 페이지 이동을 했을때 뒤로가기 아이콘을 표시하며, 10개 단위의 이동을 위한 페이지 이동버튼
			
				pageHtml.append(
						"<td width='18' align='right'>" +
								"<a href='"+CPDto.getUrlName()+"?Mpg="+Mpg+"&Spg="+Spg+"&Cpg="+(startPage-1)+"'>"  +
								"<img src='admin/img/bts.arrow.left02.gif' width='14' height='13' " +
								" ></a></td>"+
								"<td width='18' align='right'>" +
								"<a href='"+CPDto.getUrlName()+"?Mpg="+Mpg+"&Spg="+Spg+"&Cpg="+(CPDto.getCpg()-1)+"'>"  +
								"<img src='admin/img/bts.arrow.left01.gif' width='14' height='13' " +
								" ></a></td>"+
								"<td width='10'>&nbsp;</td>" +
								"<td class='Text_gray2_11px'>");
			
			
			for(long p = startPage; p <= endPage; p++){
				//현재 페이지가 아닐때(즉 다른페이지로 넘어가야 할 때 링크를 설정해줌.)
				if(p != CPDto.getCpg()){
					pageHtml.append("<font class='style2'><a href='"+CPDto.getUrlName()+"?Mpg="+Mpg+"&Spg="+Spg+"&Cpg=" + p + "'>" + 
									+ p +  "</a></font>&nbsp;");
				// 현재 보고있는 페이지 일경우 	
				}else{
					pageHtml.append("<font color='red'><b>"+p+"</b></font>&nbsp;");
				}
			}
			
			//총 페이징 갯수가 10개 이상일때, 앞으로가기 아이콘을 표시하며, 10개 단위의 이동을 위한 페이지 이동버튼
			
				pageHtml.append("<td width='10'>&nbsp;</td>" +
								"<td width='18' align='right'>" +
								"<a href='"+CPDto.getUrlName()+"?Mpg="+Mpg+"&Spg="+Spg+"&Cpg="+(CPDto.getCpg()+1)+"'>"  +
								"<img src='admin/img/bts.arrow.right01.gif' width='14' height='13' " +
								" ></a></td>"+
								"<td width='18' align='right'>" +
								"<a href='"+CPDto.getUrlName()+"?Mpg="+Mpg+"&Spg="+Spg+"&Cpg="+(endPage+1)+"'>"  +
								"<img src='admin/img/bts.arrow.right02.gif' width='14' height='13' " +
								" ></a></td>");
			
			
			//모든 HTML값 설정이 끝난 뒤 모든 문자열을 리턴~
			return pageHtml.toString();
			
		}
		//Client//
	

	
	@RequestMapping("/admClientView.do")
	public ModelAndView admClientView(ModelAndView mav, long seq){
		
		AdmClientDto ACDto = ACdao.AdmClientView(seq);
		
		mav.setViewName("/WEB-INF/www/admin/client/view.jsp");
		
		mav.addObject("ACDto", ACDto);
		return mav;
	}
	
	@RequestMapping("/admClientDelete.do")
	public ModelAndView admClientDelete(@ModelAttribute AdmClientDto Cdto, ModelAndView mav){
		
		boolean delete = ACdao.AdmClientDelete(Cdto);
		
		mav.setViewName("/WEB-INF/www/admin/client/view.jsp");
		mav.addObject("delete", delete);
		return mav;
	}
	
	

}
