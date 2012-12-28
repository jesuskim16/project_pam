package PAM.Common.Controller.Board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import PAM.Common.Model.Board.FreeBoardDao;

@Controller
public class FreeBoardAct {
	
	@Autowired
	private FreeBoardDao freeBoardDao;

}
