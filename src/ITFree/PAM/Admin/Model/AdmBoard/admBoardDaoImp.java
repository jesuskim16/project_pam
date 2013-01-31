package ITFree.PAM.Admin.Model.AdmBoard;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import ITFree.PAM.Common.Model.Board.BoardDto;

@Repository
public class admBoardDaoImp implements admBoardDao {
	private Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

	@Override
	public int totalCount(admPageDto apgDto) {
		return (int) sqlMapClientTemplate.queryForObject("admBoard.totalCount",apgDto);
	}

	@Override
	public List<BoardDto> boardList(admPageDto apgDto) {
		return sqlMapClientTemplate.queryForList("admBoard.boardList",apgDto);
	}

	@Override
	public BoardDto boardView(long seq) {
		return (BoardDto) sqlMapClientTemplate.queryForObject("admBoard.boardView",seq);
	}

	@Override
	public boolean boardInsert(BoardDto abdDto) {
		try {
			sqlMapClientTemplate.insert("admBoard.boardInsert",abdDto);
			return true;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return false;
		}	
	}

	@Override
	public boolean boardDel(long seq) {
		log.debug("--boardDel:"+seq);
		try {
			sqlMapClientTemplate.update("admBoard.boardDel",seq);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
	
	
}
