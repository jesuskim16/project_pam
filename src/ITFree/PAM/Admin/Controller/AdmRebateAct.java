package ITFree.PAM.Admin.Controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


import ITFree.PAM.Admin.Model.AdmRebate.AdmRebateDao;

@Controller
public class AdmRebateAct {
	private Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private AdmRebateDao arbDao;
	
	@RequestMapping("admRebateList.do")
	public String admRebateList(Model model){
		log.debug("---start["+"AdmRebateAct."+"admRebateList"+"]");
		
		ArrayList<String> priceName = arbDao.getPriceName();	//요금제 이름을 가져온다
		log.debug("--priceName:"+priceName);
		List<HashMap<String,String>> list = (ArrayList<HashMap<String,String>>) arbDao.getPriceTable((List<String>)priceName);
		log.debug("--list:"+list);
		model.addAttribute("priceName",priceName);
		model.addAttribute("list",list);
		return "/WEB-INF/www/admin/rebate/list.jsp";
	}	
	
}
