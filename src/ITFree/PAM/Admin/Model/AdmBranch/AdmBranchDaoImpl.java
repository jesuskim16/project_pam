package ITFree.PAM.Admin.Model.AdmBranch;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AdmBranchDaoImpl implements AdmBranchDao {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

	@Override
	public String admBranchIdCheck(String brc_id) {
		try {
			return (String) sqlMapClientTemplate.queryForObject("AdmBranch.admBranchIdCheck", brc_id);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return null;
		}
	}
}
