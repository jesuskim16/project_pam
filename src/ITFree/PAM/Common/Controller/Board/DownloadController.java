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
	public ModelAndView download(HttpServletRequest request, String filename) throws Exception {
		
		File file = new File("C:/STS/src/project_pam/WebContent/upload/model/" + filename);
		
		return new ModelAndView("download", "dfile", file);
	}
}
