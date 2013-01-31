package ITFree.PAM.Admin.Model.AdmBoard;

import java.util.List;

import ITFree.PAM.Common.Model.Board.BoardDto;

public interface admBoardDao {

	int totalCount(admPageDto apgDto);

	List<BoardDto> boardList(admPageDto apgDto);

	BoardDto boardView(long iSeq);

	boolean boardInsert(BoardDto abdDto);

	boolean boardDel(long seq);

}
