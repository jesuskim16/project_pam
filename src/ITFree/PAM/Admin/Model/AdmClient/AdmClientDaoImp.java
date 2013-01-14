package ITFree.PAM.Admin.Model.AdmClient;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;

public class AdmClientDaoImp implements AdmClientDao {

	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;
	
	@Override
	public List<AdmClientDto> AdmClientList() {
		return sqlMapClientTemplate.queryForList("AdmClient.AdmClientList");
	}

}
