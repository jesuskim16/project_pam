package PAM.Agent.Controller.SalesMgr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import PAM.Agent.Model.SalesMgr.SalesInfoDao;

@Controller
public class SalesInfoAct {
	
	@Autowired
	private SalesInfoDao salesInfoDao;

}
