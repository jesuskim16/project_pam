package PAM.Common.Controller.Board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import PAM.Common.Model.Board.NoticeDao;

@Controller
public class NoticeAct {
	
	@Autowired
	private NoticeDao noticeDao;

}
