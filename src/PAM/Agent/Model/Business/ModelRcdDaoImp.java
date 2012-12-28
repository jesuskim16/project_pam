package PAM.Agent.Model.Business;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ModelRcdDaoImp {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

}
