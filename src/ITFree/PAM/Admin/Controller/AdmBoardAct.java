package ITFree.PAM.Admin.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdmBoardAct {

	@RequestMapping("admNoticeList.do")
	public String admNoticeList(){		
		return "/WEB-INF/www/admin/board/list.jsp";		
	}
	
	@RequestMapping("admNoticeView.do")
	public String admNoticeView(){		
		return "/WEB-INF/www/admin/board/view.jsp";		
	}
	
	@RequestMapping("admNoticeInsert.do")
	public String admNoticeInsert(){		
		return "/WEB-INF/www/admin/board/insert.jsp";		
	}
	
}
