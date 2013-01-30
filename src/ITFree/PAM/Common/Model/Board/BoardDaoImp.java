package ITFree.PAM.Common.Model.Board;

import java.util.List;
import java.util.Map;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDaoImp implements BoardDao{
private Logger log = Logger.getLogger(getClass());

	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;
	
	//자유게시판
	@Override
	public List<BoardDto> freeBoardList(PageDto pageDto) {
		try {
			return sqlMapClientTemplate.queryForList("FreeBoard.freeBoardList", pageDto);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public BoardDto freeBoardView(long seq) {
		
		try {
			return (BoardDto) sqlMapClientTemplate.queryForObject("FreeBoard.freeBoardView" , seq);
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<BoardDto> getReply(long seq) {
		try {
			return sqlMapClientTemplate.queryForList("FreeBoard.getReply", seq);
		} catch (DataAccessException e) {		
			e.printStackTrace();
			return null;
		}
		
	}
	
	@Override
	public boolean freeBoardReplyDelete(long seq) {
		try {
			return sqlMapClientTemplate.delete("FreeBoard.freeBoardReplyDelete", seq) > 0;
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return false;
		}
		
	}
	
	@Override
	public boolean freeBoardReplyInsert(BoardDto boardDto) {
		try {
			sqlMapClientTemplate.insert("FreeBoard.freeBoardReplyInsert" , boardDto);
			return true;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return false;
		}
		
	}
	
	@Override
	public boolean freeBoardUpdateAction(BoardDto boardDto) {
		
		try {
			return sqlMapClientTemplate.update("FreeBoard.freeBoardUpdateAction" , boardDto) > 0;
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return false;
		}
		
	}
	
	@Override
	public boolean freeBoardDelete(BoardDto boardDto) {
		try {
			return sqlMapClientTemplate.delete("FreeBoard.freeBoardDelete" , boardDto) > 0;
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return false;
		}
	}
	
	@Override
	public boolean freeBoardInsertAction(BoardDto boardDto) {
		try {
			sqlMapClientTemplate.insert("FreeBoard.freeBoardInsertAction",boardDto);
			return true;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return false;
		}		
	}
	
	
	
	
	
	@Override
	public void BoardReadCount(long seq) {
		
		sqlMapClientTemplate.update("FreeBoard.BoardReadCount", seq);
		
	}
	
	@Override
	public long Next_seq(Map<String, Long> seqBd) {
		
		try {
			return (long) sqlMapClientTemplate.queryForObject("FreeBoard.Next_seq",seqBd);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public long Prev_seq(Map<String, Long> seqBd) {
		
		try {
			return (long) sqlMapClientTemplate.queryForObject("FreeBoard.Prev_seq",seqBd);
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public long TotalCount(PageDto pageDto) {
		try {
			return (long) sqlMapClientTemplate.queryForObject("FreeBoard.freeTotalCount", pageDto);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return 0;
		}		
	}

	@Override
	public String fileupload(BoardDto bdDto, String board_name) {
		// TODO Auto-generated method stub
		return null;
	}

}
