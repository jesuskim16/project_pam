package ITFree.PAM.Agent.Controller.SalesMgr;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Agent.Model.SalesMgr.SalesDao;
import ITFree.PAM.Agent.Model.SalesMgr.SalesDto;
import ITFree.PAM.Agent.Model.SalesMgr.ZipcodeDto;
import ITFree.PAM.Common.Model.ResultDto;

@Controller
public class SalesRegAct {

	@Autowired
	private SalesDao salesDao;

	private Logger log = Logger.getLogger(this.getClass());

	@RequestMapping("/salesInsert.do")
	protected ModelAndView salesInsert(HttpServletRequest requset,
			HttpServletResponse response) throws Exception {

		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/WEB-INF/www/agent/salesMgr/salesInsert.jsp");
		mav.addObject("title_name", "PAM::판매점등록");
		return mav;
	}

	@RequestMapping("/salesInsertAction.do")
	protected ModelAndView salesInsertAction(
			@ModelAttribute SalesDto salesDto, HttpSession session,
			ModelAndView mav,ResultDto result) throws Exception {

		salesDto.setBrc_phone(salesDto.getBrc_phone1() + "-"
				+ salesDto.getBrc_phone2() + "-" + salesDto.getBrc_phone3());
		salesDto.setBoss_phone(salesDto.getBoss_phone1() + "-"
				+ salesDto.getBoss_phone2() + "-" + salesDto.getBoss_phone3());		
		salesDto.setBrc_post(salesDto.getBrc_post1() + "-" + salesDto.getBrc_post2());
		
		salesDto.setAttach_id((String) session.getAttribute("brc_id"));
		salesDto.setBrc_lev(2);// 판매점레벨 수정
		
		boolean insert_result = salesDao.salesInsertAction(salesDto);

		if (insert_result) {
			result.setMsg("판매점정보가 입력되었습니다.");
			result.setUrl("salesList.do");
		} else {
			result.setMsg("판매점정보가 입력 실패입니다.");
			result.setUrl("javascript:history.back()");
		}

		return new ModelAndView("/WEB-INF/www/result.jsp", "result", result);

	}
	
	
	@RequestMapping("/Zipcode.do")
	public String zipcode(){
		return "/WEB-INF/www/agent/salesMgr/salesZipcode.jsp";
	}
	
	@RequestMapping("/ZipcodeAction.do")
	public String zipcodeAction(String dong , Model model){
		
		log.debug(dong);
		List<ZipcodeDto> list = salesDao.searchZipcode(dong);
		model.addAttribute("list" , list);
		model.addAttribute("dong",dong);
		return "/WEB-INF/www/agent/salesMgr/salesZipcode.jsp";
	}
	
	
	@RequestMapping("salesIdCheck.do")
	public  @ResponseBody  String salesIdCheck(String brc_id){
		String idCheck = salesDao.salesIdCheck(brc_id);
		if(!brc_id.equals(idCheck)){
			idCheck = "empty";
		}
		return idCheck;

				
	}
	
}
