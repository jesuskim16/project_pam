package ITFree.PAM.Admin.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Admin.Model.AdmClient.AdmClientDao;
import ITFree.PAM.Admin.Model.AdmClient.AdmClientDto;

@Controller
public class AdminClientAct {
	
	@Autowired
	private AdmClientDao Cdao;
	
	@RequestMapping("admClientList.do")
	public ModelAndView admClientList(@ModelAttribute AdmClientDto Cdto, ModelAndView mav){
		
		List<AdmClientDto> list = Cdao.AdmClientList();
		
		mav.setViewName("/WEB-INF/www/admin/client/list.jsp");
		
		mav.addObject("list", list);
		
		return mav;
	}

}
