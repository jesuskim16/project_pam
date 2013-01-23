package ITFree.PAM.Common.Controller.Board;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.AbstractView;

@Component
public class DownloadView extends AbstractView {	// 클래스 이름인 DownloadView의 첫글자가 소문자에 해당하는
													// downloadView를 뷰네임으로 리턴시 이 클래스가 실행됩니다	
	private Logger log = Logger.getLogger(getClass());
	public void Download(){
		setContentType("application/download; utf-8");
	}   
	
	@RequestMapping("downloadView.do")
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		log.debug("---start"+"DownloadView.renderMergedOutputModel");
		log.debug("--downloadFile:"+model.get("downloadFile"));
		log.debug("--downloadPath:"+model.get("downloadPath"));
		File file = (File)model.get("downloadFile");     
		
		if(file.exists()&&file.isFile()){	//파일이 존재할때
			log.debug("DownloadView --> file.getPath() : " + file.getPath());  //경로       
			log.debug("DownloadView --> file.getName() : " + file.getName());  //파일명                 
			
			response.setContentType(getContentType());         
			response.setContentLength((int)file.length());
			
			String userAgent = request.getHeader("User-Agent");                   
			boolean ie = userAgent.indexOf("MSIE") > -1;                   
			String fileName = null;
			
			if(ie){                           
				fileName = URLEncoder.encode(file.getName(), "utf-8");                                   
			} else {                           
				fileName = new String(file.getName().getBytes("utf-8"));                       
			}// end if;
			
			response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\";");   
			response.setHeader("Content-Transfer-Encoding", "binary");    
			
			OutputStream out = response.getOutputStream();                   
			FileInputStream fis = null;                   
			try {                           
				fis = new FileInputStream(file);                           
				FileCopyUtils.copy(fis, out);                                     
			} catch(Exception e){                           
				e.printStackTrace();                       
			}finally{                           
				if(fis != null){                                   
					try{                     
						fis.close();                 
					}catch(Exception e){
					}             
				}                 
			}// try end;                   
			out.flush();
		}//end if;
	}// render() end; 
}

