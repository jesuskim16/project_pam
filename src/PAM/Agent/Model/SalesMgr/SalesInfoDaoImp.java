package PAM.Agent.Model.SalesMgr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class SalesInfoDaoImp {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

}
