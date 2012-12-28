package PAM.Common.Controller.Board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import PAM.Common.Model.Board.PriceInfoDao;

@Controller
public class PriceInfoAct {
	
	@Autowired
	private PriceInfoDao priceInfoDao;

}
