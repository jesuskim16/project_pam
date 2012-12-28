package PAM.Common.Model.Board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class PriceInfoDaoImp {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

}
