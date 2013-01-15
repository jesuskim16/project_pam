package ITFree.PAM.Admin.Controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Admin.Model.AdmClient.AdmClientDao;
import ITFree.PAM.Admin.Model.AdmClient.AdmClientDaoImp;
import ITFree.PAM.Admin.Model.AdmClient.AdmClientDto;

@Controller
public class AdmClientAct {
	
	private Logger log = Logger.getLogger(getClass());

	
	@RequestMapping("/admClientList.do")
	public ModelAndView admClientList(@ModelAttribute AdmClientDto ACdto, ModelAndView mav){
		AdmClientDao ACdao = new AdmClientDaoImp();
		
		log.debug("--"+ACdto);
		
		List<AdmClientDto> list = ACdao.AdmClientList();
		
		log.debug("--"+list);
		
		mav.setViewName("/WEB-INF/www/admin/client/list.jsp");
		
		mav.addObject("list", list);
		
		return mav;
	}

}
