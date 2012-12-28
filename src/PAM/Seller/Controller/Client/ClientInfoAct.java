package PAM.Seller.Controller.Client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import PAM.Seller.Model.Client.ClientInfoDao;

@Controller
public class ClientInfoAct {
	
	@Autowired
	private ClientInfoDao clientInfoDao;

}
