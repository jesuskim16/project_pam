package PAM.Agent.Model.ModelInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ModelRegDaoImp {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

}
