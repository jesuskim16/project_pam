package PAM.Agent.Controller.SalesMgr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import PAM.Agent.Model.SalesMgr.SalesRankDao;

@Controller
public class SalesRankAct {
	
	@Autowired
	private SalesRankDao salesRankDao;

}
