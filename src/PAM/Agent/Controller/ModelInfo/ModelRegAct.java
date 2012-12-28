package PAM.Agent.Controller.ModelInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import PAM.Agent.Model.ModelInfo.ModelRegDao;

@Controller
public class ModelRegAct {
	
	@Autowired
	private ModelRegDao modelRegDao;

}
