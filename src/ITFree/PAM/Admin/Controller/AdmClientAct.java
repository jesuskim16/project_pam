package ITFree.PAM.Admin.Controller;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

	private Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private AdmClientDao ACdao;
	
	private String countPage;
	
	@RequestMapping("/admClientList.do")
	public ModelAndView admClientList(@ModelAttribute AdmClientDto ACdto, AdmClientPageDto CpageDto,M_AdmClientPageDto MpageDto, 
			S_AdmClientPageDto SpageDto, ModelAndView mav, String managerID, String salesID, String count){
		
		if(MpageDto.getMpg() == 0) MpageDto.setMpg(1);
		if(SpageDto.getSpg() == 0) SpageDto.setSpg(1);
		if(CpageDto.getCpg() == 0) CpageDto.setCpg(1);
		
		countPage = count;
		
		M_AdmClientPageDto MPDto = new M_AdmClientPageDto(MpageDto.getMpg(), ACdao.MListTotalCount(MpageDto));
		S_AdmClientPageDto SPDto = new S_AdmClientPageDto(SpageDto.getSpg(), ACdao.SListTotalCount(SpageDto), managerID);
		AdmClientPageDto CPDto = new AdmClientPageDto(CpageDto.getCpg(), ACdao.CListTotalCount(CpageDto), salesID);
		
		MPDto.setpHtml(getMPageHtml(CPDto, MPDto, SPDto));
		SPDto.setpHtml(getSPageHtml(CPDto, MPDto, SPDto));
		CPDto.setpHtml(getCPageHtml(CPDto, MPDto, SPDto));
		
		List<AdmClientDto> managerlist = ACdao.ManagerList(MPDto);
		List<AdmClientDto> saleslist = ACdao.SalesList(SPDto, count);
		List<AdmClientDto> clientlist = ACdao.AdmClientList(CPDto, count);
		
		List<AdmClientDto> Modellist = ACdao.admClientInsertModelList(ACdto);
		List<AdmClientDto> Pricelist = ACdao.admClientInsertPriceList(ACdto);
		
		log.debug(ACdto.getSeq());
		
		AdmClientDto ACDto = new AdmClientDto();
		long seq = ACdto.getSeq();
		if (!(seq == 0)) {
			 ACDto= ACdao.AdmClientView(seq);
			
		}
		
		
		mav.setViewName("/WEB-INF/www/admin/client/list.jsp");
		
		mav.addObject("Mlist", managerlist);
		mav.addObject("Slist", saleslist);
		mav.addObject("Clist", clientlist);
		
		mav.addObject("Mpg", MpageDto.getMpg());
		mav.addObject("Spg",SpageDto.getSpg());
		mav.addObject("Cpg",CpageDto.getCpg());
		mav.addObject("Mpage", MPDto);
		mav.addObject("Spage", SPDto);
		mav.addObject("Cpage", CPDto);
		
		mav.addObject("managerID",  managerID);
		mav.addObject("salesID", salesID); 
		
		mav.addObject("Model", Modellist);
		mav.addObject("Pricelist", Pricelist);
		
		
		mav.addObject("Model", Modellist);
		mav.addObject("Price", Pricelist);
		
		mav.addObject("ACDto", ACDto);
		
		return mav;
	}
	
	
	@RequestMapping("/admClientInsertAct.do")
	public ModelAndView admClientInsertAct(@ModelAttribute AdmClientDto ACdto,ModelAndView mav,
		 HttpServletRequest request){
		
		ACdto.setWrite_ip(request.getRemoteAddr());//IP
		ACdto.setCust_phone(ACdto.getCust_phone1()+ "-" + ACdto.getCust_phone2()+ "-" + ACdto.getCust_phone3());
		
		int rebate = ACdao.admClientInsertRebate(ACdto);
		ACdto.setRebate(rebate);
		
		boolean insert = ACdao.admClientInsertAct(ACdto);
		
		mav.setViewName("redirect:admClientList.do");
		
		return mav;
	}
	
	
	//HTML처리하는 메소드
	//Manager
	private String getMPageHtml(AdmClientPageDto CPDto,M_AdmClientPageDto MPDto, 
			S_AdmClientPageDto SPDto) {
		MPDto.setUrlName("admClientList.do");
		StringBuffer pageHtml = new StringBuffer();
		
		long startPage = ((MPDto.getMpg()-1) / MPDto.getBlockSize()) * MPDto.getBlockSize() + 1; //시작 페이지값 계산
		long endPage = ((MPDto.getMpg()-1) / MPDto.getBlockSize()) * MPDto.getBlockSize() + MPDto.getBlockSize(); // 끝 페이지값 계산

		
		if(MPDto.getPageCount() < endPage) endPage = MPDto.getPageCount(); //끝 페이지가 총 페이지랑 안맞을 경우 10개 단위의 페이징으로 표시하지 않기 위해 값을 할당하는 것
		
		//총 페이징 갯수가 10개 이상일때, 10개 이상 페이지 이동을 했을때 뒤로가기 아이콘을 표시하며, 10개 단위의 이동을 위한 페이지 이동버튼
		if(startPage != 1){
			pageHtml.append(	
							"<td width='18' align='left'><a href='"+MPDto.getUrlName()+"?managerID="+SPDto.getManagerID()+
							"&salesID="+CPDto.getSalesID()+"&count="+countPage+"&Mpg="+(startPage-1)+"&Spg="+SPDto.getSpg()+
							"&Cpg="+CPDto.getCpg()+"'>" +
							"<img src='admin/img/bts.arrow.left02.gif' width='14' height='13' " +
							"</td>" +
							"<td width='18' align='right'>" +
							"<a href='"+MPDto.getUrlName()+"?managerID="+SPDto.getManagerID()+"&salesID="+CPDto.getSalesID()+
							"&count="+countPage+"&Mpg="+(MPDto.getMpg()-1)+"&Spg="+SPDto.getSpg()+"&Cpg="+CPDto.getCpg()+"'>"  +
							"<img src='admin/img/bts.arrow.left01.gif' width='14' height='13' " +
							" ></a></td>"+
							"<td width='10'>&nbsp;</td>" +
							"<td class='Text_gray2_11px'>");
		}
		
		for(long p = startPage; p <= endPage; p++){
			//현재 페이지가 아닐때(즉 다른페이지로 넘어가야 할 때 링크를 설정해줌.)
			if(p != MPDto.getMpg()){
				pageHtml.append("<font class='style2'><a href='"+MPDto.getUrlName()+"?managerID="+SPDto.getManagerID()+
						"&salesID="+CPDto.getSalesID()+"&count="+countPage+"&Mpg=" + p +"&Spg="+SPDto.getSpg()+
						"&Cpg="+CPDto.getCpg()+ "'>" + 
								+ p +  "</a></font>&nbsp;");
			// 현재 보고있는 페이지 일경우 	
			}else{
				pageHtml.append("<font color='red'><b>"+p+"</b></font>&nbsp;");
			}
		}
		
		//총 페이징 갯수가 10개 이상일때, 앞으로가기 아이콘을 표시하며, 10개 단위의 이동을 위한 페이지 이동버튼
		if(endPage != MPDto.getPageCount()){
			pageHtml.append("<td width='10'>&nbsp;</td>" +
							"<td width='18' align='right'>" +
							"<a href='"+MPDto.getUrlName()+"?managerID="+SPDto.getManagerID()+
							"&salesID="+CPDto.getSalesID()+"&count="+countPage+"&Mpg="+(MPDto.getMpg()+1)+
							"&Spg="+SPDto.getSpg()+"&Cpg="+CPDto.getCpg()+"'>"  +
							"<img src='admin/img/bts.arrow.right01.gif' width='14' height='13' " +
							" ></a></td>"+
							"<td width='18' align='right'>" +
							"<a href='"+MPDto.getUrlName()+"?managerID="+SPDto.getManagerID()+
							"&salesID="+CPDto.getSalesID()+"&count="+countPage+"&Mpg="+(endPage+1)+
							"&Spg="+SPDto.getSpg()+"&Cpg="+CPDto.getCpg()+"'>"  +
							"<img src='admin/img/bts.arrow.right02.gif' width='14' height='13' " +
							" ></a></td>");
		}
		
		//모든 HTML값 설정이 끝난 뒤 모든 문자열을 리턴~
		return pageHtml.toString();
		
	}
	//Manager
	
	//Sales
	private String getSPageHtml(AdmClientPageDto CPDto,M_AdmClientPageDto MPDto, 
			S_AdmClientPageDto SPDto) {
		
		SPDto.setUrlName("admClientList.do");
		StringBuffer pageHtml = new StringBuffer();
		
		long startPage = ((SPDto.getSpg()-1) / SPDto.getBlockSize()) * SPDto.getBlockSize() + 1; //시작 페이지값 계산
		long endPage = ((SPDto.getSpg()-1) / SPDto.getBlockSize()) * SPDto.getBlockSize() + SPDto.getBlockSize(); // 끝 페이지값 계산

		
		if(SPDto.getPageCount() < endPage) endPage = SPDto.getPageCount(); //끝 페이지가 총 페이지랑 안맞을 경우 10개 단위의 페이징으로 표시하지 않기 위해 값을 할당하는 것
		
		//총 페이징 갯수가 10개 이상일때, 10개 이상 페이지 이동을 했을때 뒤로가기 아이콘을 표시하며, 10개 단위의 이동을 위한 페이지 이동버튼
		if(startPage != 1){
			pageHtml.append(
							"<td width='18' align='left'><a href='"+SPDto.getUrlName()+"?managerID="+SPDto.getManagerID()+"&salesID="+CPDto.getSalesID()+"&count="+countPage+"&Mpg="+MPDto.getMpg()+"&Spg="+(startPage-1)+"&Cpg="+CPDto.getCpg()+"'>" +
							"<img src='admin/img/bts.arrow.left02.gif' width='14' height='13' " +
							"</td>" +
							"<td width='18' align='right'>" +
							"<a href='"+SPDto.getUrlName()+"?managerID="+SPDto.getManagerID()+"&salesID="+CPDto.getSalesID()+"&count="+countPage+"&Mpg="+MPDto.getMpg()+"&Spg="+(SPDto.getSpg()-1)+"&Cpg="+CPDto.getCpg()+"'>"  +
							"<img src='admin/img/bts.arrow.left01.gif' width='14' height='13' " +
							" ></a></td>"+
							"<td width='10'>&nbsp;</td>" +
							"<td class='Text_gray2_11px'>");
		}
		
		for(long p = startPage; p <= endPage; p++){
			//현재 페이지가 아닐때(즉 다른페이지로 넘어가야 할 때 링크를 설정해줌.)
			if(p != SPDto.getSpg()){
				pageHtml.append("<font class='style2'><a href='"+SPDto.getUrlName()+"?managerID="+SPDto.getManagerID()+"&salesID="+CPDto.getSalesID()+"&count="+countPage+"&Mpg="+MPDto.getMpg()+"&Spg=" + p +"&Cpg="+CPDto.getCpg()+"'>" + 
								+ p +  "</a></font>&nbsp;");
			// 현재 보고있는 페이지 일경우 	
			}else{
				pageHtml.append("<font color='red'><b>"+p+"</b></font>&nbsp;");
			}
		}
		
		//총 페이징 갯수가 10개 이상일때, 앞으로가기 아이콘을 표시하며, 10개 단위의 이동을 위한 페이지 이동버튼
		if(endPage != SPDto.getPageCount()){
			pageHtml.append("<td width='10'>&nbsp;</td>" +
							"<td width='18' align='right'>" +
							"<a href='"+SPDto.getUrlName()+"?managerID="+SPDto.getManagerID()+"&salesID="+CPDto.getSalesID()+"&count="+countPage+"&Mpg="+MPDto.getMpg()+"&Spg="+(SPDto.getSpg()+1)+"&Cpg="+CPDto.getCpg()+"'>"  +
							"<img src='admin/img/bts.arrow.right01.gif' width='14' height='13' " +
							" ></a></td>"+
							"<td width='18' align='right'>" +
							"<a href='"+SPDto.getUrlName()+"?managerID="+SPDto.getManagerID()+"&salesID="+CPDto.getSalesID()+"&count="+countPage+"&Mpg="+MPDto.getMpg()+"&Spg="+(endPage+1)+"&Cpg="+CPDto.getCpg()+"'>"  +
							"<img src='admin/img/bts.arrow.right02.gif' width='14' height='13' " +
							" ></a></td>");
		
		}
		//모든 HTML값 설정이 끝난 뒤 모든 문자열을 리턴~
		return pageHtml.toString();
		
	}
	//Sales
	
	//Client//
		private String getCPageHtml(AdmClientPageDto CPDto,M_AdmClientPageDto MPDto, 
				S_AdmClientPageDto SPDto) {
			
			CPDto.setUrlName("admClientList.do");
			StringBuffer pageHtml = new StringBuffer();
			
			long startPage = ((CPDto.getCpg()-1) / CPDto.getBlockSize()) * CPDto.getBlockSize() + 1; //시작 페이지값 계산
			long endPage = ((CPDto.getCpg()-1) / CPDto.getBlockSize()) * CPDto.getBlockSize() + CPDto.getBlockSize(); // 끝 페이지값 계산

			
			if(CPDto.getPageCount() < endPage) endPage = CPDto.getPageCount(); //끝 페이지가 총 페이지랑 안맞을 경우 10개 단위의 페이징으로 표시하지 않기 위해 값을 할당하는 것
			
			//10개 이상 페이지 이동을 했을때 뒤로가기 아이콘을 표시하며, 10개 단위의 이동을 위한 페이지 이동버튼
			if(startPage != 1){
				pageHtml.append(
						"<td width='18' align='right'>" +
								"<a href='"+CPDto.getUrlName()+"?managerID="+SPDto.getManagerID()+"&salesID="+CPDto.getSalesID()+"&count="+countPage+"&Mpg="+MPDto.getMpg()+"&Spg="+SPDto.getSpg()+"&Cpg="+(startPage-1)+"'>"  +
								"<img src='admin/img/bts.arrow.left02.gif' width='14' height='13' " +
								" ></a></td>"+
								"<td width='18' align='right'>" +
								"<a href='"+CPDto.getUrlName()+"?managerID="+SPDto.getManagerID()+"&salesID="+CPDto.getSalesID()+"&count="+countPage+"&Mpg="+MPDto.getMpg()+"&Spg="+SPDto.getSpg()+"&Cpg="+(CPDto.getCpg()-1)+"'>"  +
								"<img src='admin/img/bts.arrow.left01.gif' width='14' height='13' " +
								" ></a></td>"+
								"<td width='10'>&nbsp;</td>" +
								"<td class='Text_gray2_11px'>");
			}
			
			for(long p = startPage; p <= endPage; p++){
				//현재 페이지가 아닐때(즉 다른페이지로 넘어가야 할 때 링크를 설정해줌.)
				if(p != CPDto.getCpg()){
					pageHtml.append("<font class='style2'><a href='"+CPDto.getUrlName()+"?managerID="+SPDto.getManagerID()+"&salesID="+CPDto.getSalesID()+"&count="+countPage+"&Mpg="+MPDto.getMpg()+"&Spg="+SPDto.getSpg()+"&Cpg=" + p + "'>" + 
									+ p +  "</a></font>&nbsp;");
				// 현재 보고있는 페이지 일경우 	
				}else{
					pageHtml.append("<font color='red'><b>"+p+"</b></font>&nbsp;");
				}
			}
			
			//총 페이징 갯수가 10개 이상일때, 앞으로가기 아이콘을 표시하며, 10개 단위의 이동을 위한 페이지 이동버튼
			if(endPage != CPDto.getPageCount()){
				pageHtml.append("<td width='10'>&nbsp;</td>" +
								"<td width='18' align='right'>" +
								"<a href='"+CPDto.getUrlName()+"?managerID="+SPDto.getManagerID()+"&salesID="+CPDto.getSalesID()+"&count="+countPage+"&Mpg="+MPDto.getMpg()+"&Spg="+SPDto.getSpg()+"&Cpg="+(CPDto.getCpg()+1)+"'>"  +
								"<img src='admin/img/bts.arrow.right01.gif' width='14' height='13' " +
								" ></a></td>"+
								"<td width='18' align='right'>" +
								"<a href='"+CPDto.getUrlName()+"?managerID="+SPDto.getManagerID()+"&salesID="+CPDto.getSalesID()+"&count="+countPage+"&Mpg="+MPDto.getMpg()+"&Spg="+SPDto.getSpg()+"&Cpg="+(endPage+1)+"'>"  +
								"<img src='admin/img/bts.arrow.right02.gif' width='14' height='13' " +
								" ></a></td>");
			
			}
			//모든 HTML값 설정이 끝난 뒤 모든 문자열을 리턴~
			return pageHtml.toString();
			
		}
		//Client//
	


	
	@RequestMapping("/admClientDelete.do")
	public ModelAndView admClientDelete(@ModelAttribute AdmClientDto Cdto, ModelAndView mav){
		
		boolean delete = ACdao.AdmClientDelete(Cdto);
		
		mav.setViewName("redirect:admClientList.do");
		mav.addObject("delete", delete);
		return mav;
	}
	
	@RequestMapping("/admClientUpdateAct.do")
	public ModelAndView admClientUpdateAct(@ModelAttribute AdmClientDto ACdto, ModelAndView mav){
		
		ACdto.setCust_phone(ACdto.getCust_phone1() + "-" + ACdto.getCust_phone2() + "-" + ACdto.getCust_phone3());
		
		
		log.debug("확인:"+ACdto);
		boolean update =  ACdao.AdmClientUpdateAct(ACdto);
		
		log.debug("결과:"+update);
		
		mav.setViewName("redirect:admClientList.do");
		
		return mav;

	}
	

	
	

}
