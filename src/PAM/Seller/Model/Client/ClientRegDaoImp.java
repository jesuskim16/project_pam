package PAM.Seller.Model.Client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ClientRegDaoImp implements ClientRegDao {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

}
