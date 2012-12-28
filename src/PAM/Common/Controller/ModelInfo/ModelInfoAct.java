package PAM.Common.Controller.ModelInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import PAM.Common.Model.ModelInfo.ModelInfoDao;

@Controller
public class ModelInfoAct {
	
	@Autowired
	private ModelInfoDao modelInfoDao;

}
