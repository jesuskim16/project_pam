package PAM.Common.Controller.ModelInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import PAM.Common.Model.ModelInfo.ModelRankDao;

@Controller
public class ModelRankAct {
	
	@Autowired
	private ModelRankDao modelRankDao;
	

}
