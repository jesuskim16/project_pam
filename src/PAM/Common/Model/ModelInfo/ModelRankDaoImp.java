package PAM.Common.Model.ModelInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ModelRankDaoImp {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

}
