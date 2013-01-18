package ITFree.PAM.Common.Model.Board;

import java.util.List;
import java.util.Map;

public interface BoardDao {

	long TotalCount(PageDto pageDto);

	BoardDto freeBoardView(long seq);

	boolean freeBoardUpdateAction(BoardDto boardDto);

	boolean freeBoardDelete(BoardDto boardDto);

	boolean freeBoardInsertAction(BoardDto boardDto);

	long Prev_seq(Map<String, Long> seqBd);

	long Next_seq(Map<String, Long> seqBd);

	void BoardReadCount(long seq);

	List<BoardDto> freeBoardList(PageDto pageDto);

	boolean freeBoardReplyInsert(BoardDto boardDto);

	List<BoardDto> getReply(long seq);

	boolean freeBoardReplyDelete(long seq);	

	String fileupload(BoardDto bdDto, String board_name);

}
