package ITFree.PAM.Admin.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Admin.Model.AdmBranch.AdmBranchDao;
import ITFree.PAM.Admin.Model.AdmBranch.AdmBranchDto;
import ITFree.PAM.Admin.Model.AdmBranch.AdmBranchZipcodeDto;

@Controller
public class AdmBranchAct {
	
	@Autowired
	private AdmBranchDao ABDao;
	
	@RequestMapping("admBranchList.do")
	public ModelAndView admBranchList(){
		List<AdmBranchDto> ABDList = ABDao.admBranchList();
		//System.out.println(ABList);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/www/admin/branch/test.html");
		mav.addObject("ABDList",ABDList);
		return mav;
	}
	
	@RequestMapping("admBranchInsert.do")
	public ModelAndView admBranchInsert(){
		
		List<AdmBranchDto> ABList = ABDao.admBranchSelectList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/www/admin/branch/br_insert.jsp");
		mav.addObject("ABList",ABList);
		return mav;	
	}	
	
	@RequestMapping("admBranchInsertAction.do")
	public ModelAndView admBranchInsertAction(@ModelAttribute AdmBranchDto ABDto, HttpSession session,  HttpServletRequest request){
		//대표 전화번호, 지점 전화번호를 합하여 각 변수에 할당
		ABDto.setBoss_phone(ABDto.getBoss_phone1() + "-" + ABDto.getBoss_phone2() + "-" + ABDto.getBoss_phone3());
		ABDto.setBrc_phone(ABDto.getBrc_phone1() + "-" + ABDto.getBrc_phone2() + "-" + ABDto.getBrc_phone3());
		ABDto.setWrite_id((String)session.getAttribute("id")); // 현재 로그인한 사람을 회원입력한 사람으로 저장
		ABDto.setWrite_ip(request.getRemoteAddr()); // 글쓴이 IP주소를 저장
		
		if(ABDto.getBrc_lev() == 1) ABDto.setAttach_id("admin"); //대리점 입력일 경우 관리자 아이디입력
		
		boolean ABIA_result = ABDao.admBranchInsertAction(ABDto); // DB접근
		ModelAndView mav = new ModelAndView();
		if(ABIA_result){
			mav.setViewName("redirect:admBranchList.do");
		}else{
			mav.setViewName("/WEB-INF/www/common/result.jsp");
			mav.addObject("msg" , "가입에 실패하였습니다.");
			mav.addObject("url" ,"javascript:history.back();");
		}
		return mav;		
	}
	
	@RequestMapping("BranchZipcode.do")
	public String branchZipcode(){		
		return "/WEB-INF/www/admin/branch/branchZipcode.jsp";		
	}
	
	@RequestMapping("BranchZipcodeAction.do")
	public ModelAndView branchZipcodeAction(String dong){
		
		List<AdmBranchZipcodeDto> brList = ABDao.admBranchZipcode(dong);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/www/admin/branch/branchZipcode.jsp");
		mav.addObject("brList" , brList);
		mav.addObject("dong" , dong);
		
		return mav;		
	}
	
	
	@RequestMapping("admBranchIdCheck.do")
	public  @ResponseBody  String admBranchIdCheck(String brc_id){
		String idCheck = ABDao.admBranchIdCheck(brc_id);
		if(!brc_id.equals(idCheck)){
			idCheck = "empty";
		}
		return idCheck;

				
	}

}
