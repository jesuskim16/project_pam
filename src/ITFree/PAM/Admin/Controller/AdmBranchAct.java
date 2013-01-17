package ITFree.PAM.Admin.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ITFree.PAM.Admin.Model.AdmBranch.AdmBranchDao;
import ITFree.PAM.Admin.Model.AdmBranch.AdmBranchDto;

@Controller
public class AdmBranchAct {
	
	@Autowired
	private AdmBranchDao ABDao;
	
	@RequestMapping("admBranchList.do")
	public String admBranchList(){		
		return "/WEB-INF/www/admin/branch/br_list.jsp";		
	}
	
	@RequestMapping("admNoticeInsertAct.do")
	public String admNoticeInsertAct(){		
		return null;		
	}
	
	@RequestMapping("admBranchInsert.do")
	public String admBranchInsert(){		
		return "/WEB-INF/www/admin/branch/br_insert.jsp";		
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
