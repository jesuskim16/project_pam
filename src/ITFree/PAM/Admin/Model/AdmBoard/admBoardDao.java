package ITFree.PAM.Admin.Model.AdmBoard;

import java.util.List;

import ITFree.PAM.Common.Model.Board.BoardDto;

public interface admBoardDao {

	int totalCount(admPageDto apgDto);

	List<admBoardDto> boardList(admPageDto apgDto);

	admBoardDto boardView(int seq);

	boolean freeBoardInsertAction(BoardDto abdDto);

}
