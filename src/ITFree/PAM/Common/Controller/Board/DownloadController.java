package ITFree.PAM.Common.Controller.Board;

import java.io.File;

import org.apache.log4j.Logger;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DownloadController implements ApplicationContextAware {
	Logger log = Logger.getLogger(getClass());
    private WebApplicationContext context = null; 
    
    @RequestMapping("download.do")     
    public ModelAndView download(String filename, String board_name){ 
    	log.debug("---start"+"DownloadController.download");
    	String server_root ="c:\\Documents and Settings\\A\\git\\project_pam\\WebContent";	//서버절대경로
		String upfolder = server_root+"\\upload\\"+board_name+"\\";							//업로드경로
    	String fullPath = upfolder + filename;
    	log.debug("--filename:"+filename);
    	log.debug("--fullPath:"+fullPath);
    	File file = new File(fullPath);     
    	log.debug("--file:"+file);
    	
    	
    	return new ModelAndView("download", "downloadFile", file);     
    }
    
    public void setApplicationContext(ApplicationContext arg0) throws BeansException {         
    	this.context = (WebApplicationContext)arg0;  
    }
}
