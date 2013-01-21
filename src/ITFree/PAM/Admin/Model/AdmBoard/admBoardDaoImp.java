package ITFree.PAM.Admin.Model.AdmBoard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class admBoardDaoImp implements admBoardDao {

	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

	@Override
	public int totalCount(admPageDto apgDto) {
		return (int) sqlMapClientTemplate.queryForObject("admBoard.totalCount",apgDto);
	}

	@Override
	public List<admBoardDao> boardList(admPageDto apgDto) {
		return sqlMapClientTemplate.queryForList("admBoard.boardList",apgDto);
	}
	
	
}
