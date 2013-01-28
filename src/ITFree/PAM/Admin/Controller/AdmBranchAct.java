package ITFree.PAM.Admin.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Admin.Model.AdmBranch.AdmBranchDao;
import ITFree.PAM.Admin.Model.AdmBranch.AdmBranchDto;
import ITFree.PAM.Admin.Model.AdmBranch.AdmBranchPageDto;
import ITFree.PAM.Admin.Model.AdmBranch.AdmBranchZipcodeDto;

@Controller
public class AdmBranchAct {
	
	@Autowired
	private AdmBranchDao ABDao;
	
	//지점목록 불러오는 곳
	@RequestMapping("admBranchList.do")
	public ModelAndView admBranchList(@ModelAttribute AdmBranchPageDto pageDto){
		if(pageDto.getPg() == 0) pageDto.setPg(1); // 처음 지점목록 불러올 시 페이지 값을 1로 설정
		AdmBranchPageDto ABPDto = new AdmBranchPageDto(pageDto.getPg(), ABDao.totalCount());		
		List<AdmBranchDto> ABDList = ABDao.admBranchList(ABPDto);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/www/admin/branch/br_list.jsp");
		mav.addObject("ABDList",ABDList);		
		mav.addObject("ABPDto",ABPDto);
		return mav;
	}
	
	//대리점 목록불러오기 부분(SELECT BOX)
	@RequestMapping("admBranchInsert.do")
	public ModelAndView admBranchInsert(){
		
		List<AdmBranchDto> ABList = ABDao.admBranchSelectList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/www/admin/branch/br_insert.jsp");
		mav.addObject("ABList",ABList);
		return mav;	
	}	
	
	//수정완료 버튼 누를 시 액션부분
	@RequestMapping("admBranchModifyAction.do")
	public ModelAndView admBranchModifyAction(@ModelAttribute AdmBranchDto ABDto , HttpSession session){
		
		ABDto.setBoss_phone(ABDto.getBoss_phone1() + "-" + ABDto.getBoss_phone2() + "-" + ABDto.getBoss_phone3());
		ABDto.setBrc_phone(ABDto.getBrc_phone1() + "-" + ABDto.getBrc_phone2() + "-" + ABDto.getBrc_phone3());
		ABDto.setWrite_id((String)session.getAttribute("id")); // 현재 로그인한 사람을 회원입력한 사람으로 저장
		if(ABDto.getBrc_lev() == 1) ABDto.setAttach_id("admin"); //대리점 입력일 경우 관리자 아이디입력

		boolean result = ABDao.admBranchModifyAction(ABDto);
		ModelAndView mav = new ModelAndView();
		if(result){
			mav.setViewName("redirect:admBranchList.do");
		}else{
			mav.setViewName("javascript:history.back();");
		}
		return mav;	
	}
	
	//지점입력 완료 버튼 누를 시 액션부분
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
	
	//우편번호 jsp 새창을 띄워주는 곳
	@RequestMapping("BranchZipcode.do")
	public String branchZipcode(){		
		return "/WEB-INF/www/admin/branch/branchZipcode.jsp";		
	}
	
	//우편번호 검색값 불러오는 곳
	@RequestMapping("BranchZipcodeAction.do")
	public ModelAndView branchZipcodeAction(String dong){
		
		List<AdmBranchZipcodeDto> brList = ABDao.admBranchZipcode(dong);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/www/admin/branch/branchZipcode.jsp");
		mav.addObject("brList" , brList);
		mav.addObject("dong" , dong);
		
		return mav;		
	}
	
	//ID CHECK부분 (ajax)
	@RequestMapping("admBranchIdCheck.do")
	public  @ResponseBody  String admBranchIdCheck(String brc_id){
		String idCheck = ABDao.admBranchIdCheck(brc_id);
		if(!brc_id.equals(idCheck)){
			idCheck = "empty";
		}
		return idCheck;

				
	}
	
	//지점 수정부분(ajax)
	@RequestMapping("admBranchModify.do")
	public ModelAndView admBranchModify(long seq){
		AdmBranchDto ABDto = new AdmBranchDto();
		ABDto = ABDao.admBranchModify(seq);
		MatrixTime(2000);
		List<AdmBranchDto> ABList = ABDao.admBranchSelectList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/www/admin/branch/br_update.jsp");
		mav.addObject("ABDto" , ABDto);
		mav.addObject("ABList" , ABList);
		return mav;				
	}
	
   // Delay 주는 부분 (Loading 보여주기 위함)
   public void MatrixTime(int delayTime){
       long saveTime = System.currentTimeMillis();
       long currTime = 0;
       while( currTime - saveTime < delayTime){
           currTime = System.currentTimeMillis();
       }
   }   
   
   //지점 삭제부분
	@RequestMapping("admBranchDelete.do")
	public ModelAndView admBranchDelete(HttpServletRequest request){

		String[] seq = request.getParameterValues("seq"); //배열로 선택된 Check Box의 값들을 갖고온다.
		// List에 넘어온 값들을 담아주고
		List<String> seqList = new ArrayList<String>(seq.length);
		for(int i = 0; i < seq.length ; i++){
			seqList.add(i, seq[i]);
		}
		//DB쪽으로 매개변수를 넘겨 삭제를 한다.
		boolean del_result = ABDao.admBranchDeleteAction(seqList);
		ModelAndView mav = new ModelAndView();
		if(del_result){
			mav.setViewName("redirect:admBranchList.do");
		}else{
			mav.setViewName("/WEB-INF/www/common/result.jsp");
			mav.addObject("msg" , "삭제에 실패하였습니다. 다시 시도해 주세요.");
			mav.addObject("url" ,"javascript:history.back();");
		}
		

		return mav;				
	}
   


}
