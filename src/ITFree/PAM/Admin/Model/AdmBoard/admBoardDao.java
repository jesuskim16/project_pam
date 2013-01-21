package ITFree.PAM.Admin.Model.AdmBoard;

import java.util.List;

public interface admBoardDao {

	int totalCount(admPageDto apgDto);

	List<admBoardDao> boardList(admPageDto apgDto);

	

}
