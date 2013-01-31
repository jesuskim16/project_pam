package ITFree.PAM.Common.Controller.Board;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

@Controller
public class DownloadController {
	Logger log = Logger.getLogger(getClass());    
    
	@RequestMapping("/download.do")
	public ModelAndView download(String filename, int board_chk) throws Exception {
		String addr = null;
		String server_root ="c:\\Documents and Settings\\A\\git\\project_pam\\WebContent";	//서버절대경로
		
		if(board_chk == 1){
			addr = server_root+"\\upload\\notice\\";
		} else if(board_chk == 2){
			addr = server_root+"\\upload\\freeBoard\\";
		} else if(board_chk == 3){
			addr = server_root+"\\upload\\priceInfo\\";
		}
		
		File file = new File( addr + filename);
		
		return new ModelAndView("download", "dfile", file);
	}
}
