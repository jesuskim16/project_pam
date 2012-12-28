package PAM.Agent.Controller.Business;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import PAM.Agent.Model.Business.SalesRcdDao;

@Controller
public class SalesRcdAct {
	
	@Autowired
	private SalesRcdDao salesRcdDao;

} 
 