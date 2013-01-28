package ITFree.PAM.Admin.Controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Admin.Model.AdmModel.AdmModelDao;
import ITFree.PAM.Admin.Model.AdmModel.AdmModelDto;

@Controller
public class AdmModelAct {
	
	@Autowired
	private AdmModelDao AMDao;
	
	//Model 정보 List
	@RequestMapping("admModelList.do")
	public ModelAndView admModelList(){
		
		List<AdmModelDto> AMList = AMDao.admModelList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/www/admin/Model/model_list.jsp");
		mav.addObject("AMList",AMList);
		
		return mav;
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

		MultipartFile Mfile = AMDto.getFile();
		

			String filename = Mfile.getOriginalFilename();	

			File file = new File("/upload/" + filename);
			try {
				Mfile.transferTo(file);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}


		
		//boolean insert_result = AMDao.admModelInsertAction(AMDto);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:admModelList.do");

		return null;
	}

}
