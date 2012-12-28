package PAM.Agent.Controller.SalesMgr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import PAM.Agent.Model.SalesMgr.SalesRegDao;

@Controller
public class SalesRegAct {
	
	@Autowired
	private SalesRegDao salesRegDao;

}
