package ITFree.PAM.Common.Model.Board;

import java.util.List;

public interface BoardDao {

	long TotalCount(PageDto pageDto);

	BoardDto freeBoardView(long seq);

	boolean freeBoardUpdateAction(BoardDto boardDto);

	boolean freeBoardDelete(BoardDto boardDto);

	boolean freeBoardInsertAction(BoardDto boardDto);

	long Prev_seq(long seq);

	long Next_seq(long seq);

	void BoardReadCount(long seq);

	List<BoardDto> freeBoardList(PageDto pageDto);


}
