package ITFree.PAM.Admin.Controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		
		ArrayList<String> priceName = priceName();
		
		model.addAttribute("priceName",priceName);
		model.addAttribute("list",list(priceName));
		return "/WEB-INF/www/admin/rebate/list.jsp";
	}	
	@RequestMapping("admRebateUpdate.do")
	public String admRebateUpdate(Model model, String seq, String price, String money){
		log.debug("---start["+"AdmRebateAct."+"admRebateUpdate"+"]");
		log.debug("--"+seq+":"+price+":"+money);		
		int iSeq = Integer.parseInt(seq);
		
		log.debug("--"+iSeq+":"+price+":"+money);
		Map<String,Object> updateInfo = new HashMap<String,Object>();
		updateInfo.put("seq", iSeq);
		updateInfo.put("price", price);
		updateInfo.put("money", money);
		boolean updateResult = arbDao.updatePrice(updateInfo);
		
		model.addAttribute("priceName",priceName());
		model.addAttribute("list",list(priceName()));
		return "/WEB-INF/www/admin/rebate/list.jsp";
	}

	public ArrayList<String> priceName(){	//요금제 리스트
		return arbDao.getPriceName();
	}	
	
	public List<HashMap<String,String>>list(ArrayList<String> priceName){	//리베이트 리스트
		return (ArrayList<HashMap<String,String>>)arbDao.getPriceTable((List<String>)priceName);		
	}
	
}
