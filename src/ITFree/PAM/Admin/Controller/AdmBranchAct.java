package ITFree.PAM.Admin.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdmBranchAct {
	
	@RequestMapping("admBranchList.do")
	public String admBranchList(){		
		return "/WEB-INF/www/admin/branch/br_list.jsp";		
	}
	
	@RequestMapping("admBranchInsert.do")
	public String admBranchInsert(){		
		return "/WEB-INF/www/admin/branch/br_insert.jsp";		
	}

}
