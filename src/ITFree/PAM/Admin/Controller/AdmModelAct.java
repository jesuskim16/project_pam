package ITFree.PAM.Admin.Controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import net.coobird.thumbnailator.Thumbnails;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Admin.Model.AdmBranch.AdmBranchDto;
import ITFree.PAM.Admin.Model.AdmModel.AdmModelDao;
import ITFree.PAM.Admin.Model.AdmModel.AdmModelDto;
import ITFree.PAM.Admin.Model.AdmModel.AdmModelPageDto;

@Controller
public class AdmModelAct {
	
	@Autowired
	private AdmModelDao AMDao;
	
	//Model 정보 List
	@RequestMapping("admModelList.do")
	public ModelAndView admModelList(@ModelAttribute AdmModelPageDto pageDto){
		if(pageDto.getPg() == 0) pageDto.setPg(1);
		AdmModelPageDto AMPDto = new AdmModelPageDto(pageDto.getPg() , AMDao.admModelTotalCount());
		List<AdmModelDto> AMList = AMDao.admModelList(AMPDto);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/www/admin/Model/model_list.jsp");
		mav.addObject("AMList",AMList);
		mav.addObject("AMPDto",AMPDto);
		return mav;
	}
	
	//Model 삭제 부분
	@RequestMapping("admModelListDelete.do")
	public ModelAndView admModelListDelete(HttpServletRequest request){

		String[] seq = request.getParameterValues("seq"); //배열로 선택된 Check Box의 값들을 갖고온다.
		// List에 넘어온 값들을 담아주고
		List<String> seqList = new ArrayList<String>(seq.length);
		for(int i = 0; i < seq.length ; i++){
			seqList.add(i, seq[i]);
		}
		//DB쪽으로 매개변수를 넘겨 삭제를 한다.
		boolean del_result = AMDao.admModelListDeleteAction(seqList);
		ModelAndView mav = new ModelAndView();
		if(del_result){
			mav.setViewName("redirect:admModelList.do");
		}else{
			mav.setViewName("/WEB-INF/www/common/result.jsp");
			mav.addObject("msg" , "삭제에 실패하였습니다. 다시 시도해 주세요.");
			mav.addObject("url" ,"javascript:history.back();");
		}
		return mav;				
	}
	
	
	//모델 수정입력부분(ajax)
	@RequestMapping("admModelListModify.do")
	public ModelAndView admModelListModify(long seq){
		AdmModelDto AMto = new AdmModelDto();
		AMto = AMDao.admModelListModify(seq);
		List<AdmModelDto> AMCList = AMDao.admCompList();
		MatrixTime(1000);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/www/admin/Model/model_update.jsp");
		mav.addObject("AMto" , AMto);
		mav.addObject("AMCList" , AMCList);
		return mav;				
	}
	
	//모델 수정입력 완료부분(ajax)
	@RequestMapping("admModelListModifyAction.do")
	public ModelAndView admModelListModifyAction(@ModelAttribute AdmModelDto AMDto){

		String server_root ="c:\\Documents and Settings\\A\\git\\project_pam\\WebContent";	//서버절대경로
		String upfolder = server_root+"\\upload\\model\\";							//업로드경로
		
		MultipartFile Mfile = AMDto.getFile();	// 	MultipartFile Mfile에 Web에서 넘어온 file type 값을 가져온다.
		ModelAndView mav = new ModelAndView();
		
		if (!Mfile.isEmpty()) { // Mfile이 비어있지 않다면~
			//파일 SIZE가 500KB 이상이라면~
			if(Mfile.getSize() > 512000){
				mav.setViewName("/WEB-INF/www/common/result.jsp");
				mav.addObject("msg" , "500KB 이하의 파일만 업로드 가능합니다.");
				mav.addObject("url" ,"javascript:history.back();");	
				return mav;
			}
			//Image 파일일경우만 실행~
			if (Mfile.getContentType().equals("image/jpeg")) {
				String filename = Mfile.getOriginalFilename(); // 실제 file 이름을 저장
				AMDto.setFilename(filename);
				File file = new File(upfolder + filename); // FILE(java.io)에 경로를 넣어줌
				//만약 폴더가 없을 시 폴더를 생설 할 것
				if(!file.exists()){
					file.mkdirs();
				}
				if(file.exists() && file.isFile()){	// 이미 존재하는 파일일경우 현재시간을 가져와서 리네임
					filename = System.currentTimeMillis()  +"_"+ Mfile.getOriginalFilename() ;
					file = new File(upfolder + filename);	//리네임된 파일이름으로 재생성
				}			
				
				try {
					Mfile.transferTo(file); // 실제 경로에 Upload
					// iamge를 thumbnail로 변경
					try {
						Thumbnails
								.of(new File( upfolder + filename))
								.size(50, 64)
								.toFile(new File(upfolder + "thumb" + filename));
					} catch (IOException e) {
						e.printStackTrace();
					}

				} catch (IllegalStateException e) {
					e.printStackTrace();

					return mav;
				} catch (IOException e) {
					e.printStackTrace();
					mav.setViewName("/WEB-INF/www/common/result.jsp");
					mav.addObject("msg" , "업로드 중 에러발생하였습니다. 다시 시도해주세요.");
					mav.addObject("url" ,"javascript:history.back();");
					return mav;
				}	
			}else{
				mav.setViewName("/WEB-INF/www/common/result.jsp");
				mav.addObject("msg" , "jpg 파일만 업로드 가능합니다.");
				mav.addObject("url" ,"javascript:history.back();");
				return mav;
			}

		} else {
			mav.setViewName("/WEB-INF/www/common/result.jsp");
			mav.addObject("msg" , "파일을 입력해주세요");
			mav.addObject("url" ,"javascript:history.back();");
			return mav;
		}

		boolean update_result = AMDao.admModelListModifyAction(AMDto);
		
		if (update_result) {
			mav.setViewName("redirect:admModelList.do");
		} else {
			mav.setViewName("/WEB-INF/www/common/result.jsp");
			mav.addObject("msg" , "모델수정에 실패하였습니다.");
			mav.addObject("url" ,"javascript:history.back();");
		}

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
	
	
	//Model입력창 부분
	@RequestMapping("admModelInsert.do")
	public ModelAndView admModelInsert(){
		
		List<AdmModelDto> AMCList = AMDao.admCompList();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/www/admin/Model/model_insert.jsp");
		mav.addObject("AMCList",AMCList);
		return mav;
	}

	
	//Model 입력 완료부분
	@RequestMapping("admModelInsertAction.do")
	public ModelAndView admModelInsertAction(@ModelAttribute AdmModelDto AMDto){
		
		String server_root ="c:\\Documents and Settings\\A\\git\\project_pam\\WebContent";	//서버절대경로
		String upfolder = server_root+"\\upload\\model\\";							//업로드경로
		
		MultipartFile Mfile = AMDto.getFile();	// 	MultipartFile Mfile에 Web에서 넘어온 file type 값을 가져온다.
		ModelAndView mav = new ModelAndView();
		
		if (!Mfile.isEmpty()) { // Mfile이 비어있지 않다면~
			//파일 SIZE가 500KB 이상이라면~
			if(Mfile.getSize() > 512000){
				mav.setViewName("/WEB-INF/www/common/result.jsp");
				mav.addObject("msg" , "500KB 이하의 파일만 업로드 가능합니다.");
				mav.addObject("url" ,"javascript:history.back();");	
				return mav;
			}
			//Image 파일일경우만 실행~
			if (Mfile.getContentType().equals("image/jpeg")) {
				String filename = Mfile.getOriginalFilename(); // 실제 file 이름을 저장
				AMDto.setFilename(filename);
				File file = new File(upfolder + filename); // FILE(java.io)에 경로를 넣어줌
				//만약 폴더가 없을 시 폴더를 생설 할 것
				if(!file.exists()){
					file.mkdirs();
				}
				if(file.exists() && file.isFile()){	// 이미 존재하는 파일일경우 현재시간을 가져와서 리네임
					filename = System.currentTimeMillis()  +"_"+ Mfile.getOriginalFilename() ;
					file = new File(upfolder + filename);	//리네임된 파일이름으로 재생성
				}			
				
				try {
					Mfile.transferTo(file); // 실제 경로에 Upload
					// iamge를 thumbnail로 변경
					try {
						Thumbnails
								.of(new File( upfolder + filename))
								.size(50, 64)
								.toFile(new File(upfolder + "thumb" + filename));
					} catch (IOException e) {
						e.printStackTrace();
					}

				} catch (IllegalStateException e) {
					e.printStackTrace();

					return mav;
				} catch (IOException e) {
					e.printStackTrace();
					mav.setViewName("/WEB-INF/www/common/result.jsp");
					mav.addObject("msg" , "업로드 중 에러발생하였습니다. 다시 시도해주세요.");
					mav.addObject("url" ,"javascript:history.back();");
					return mav;
				}	
			}else{
				mav.setViewName("/WEB-INF/www/common/result.jsp");
				mav.addObject("msg" , "jpg 파일만 업로드 가능합니다.");
				mav.addObject("url" ,"javascript:history.back();");
				return mav;
			}

		} else {
			mav.setViewName("/WEB-INF/www/common/result.jsp");
			mav.addObject("msg" , "파일을 입력해주세요");
			mav.addObject("url" ,"javascript:history.back();");
			return mav;
		}

		boolean insert_result = AMDao.admModelInsertAction(AMDto);
		
		if (insert_result) {
			mav.setViewName("redirect:admModelList.do");
		} else {
			mav.setViewName("/WEB-INF/www/common/result.jsp");
			mav.addObject("msg" , "모델입력에 실패하였습니다.");
			mav.addObject("url" ,"javascript:history.back();");
		}

		return mav;
	}

}
