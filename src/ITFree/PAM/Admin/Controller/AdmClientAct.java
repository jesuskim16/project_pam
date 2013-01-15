package ITFree.PAM.Admin.Controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Admin.Model.AdmClient.AdmClientDao;
import ITFree.PAM.Admin.Model.AdmClient.AdmClientDto;
import ITFree.PAM.Admin.Model.AdmClient.AdmClientPageDto;
import ITFree.PAM.Agent.Model.SalesMgr.SalesPageDto;

@Controller
public class AdmClientAct {
	
	private Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private AdmClientDao ACdao;
	
	@RequestMapping("/admClientList.do")
	public ModelAndView admClientList(@ModelAttribute AdmClientPageDto pageDto, ModelAndView mav){
		if(pageDto.getPg() == 0) pageDto.setPg(1);
		
		AdmClientPageDto APDto = new AdmClientPageDto(pageDto.getPg(), ACdao.TotalCount(pageDto));
		
		List<AdmClientDto> list = ACdao.AdmClientList(APDto);
		
		log.debug("--"+list);

		
		mav.setViewName("/WEB-INF/www/admin/client/list.jsp");
		
		mav.addObject("list", list);
		mav.addObject("page", APDto);
		
		return mav;
	}

}
