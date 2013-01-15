package ITFree.PAM.Admin.Model.AdmClient;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AdmClientDaoImpl implements AdmClientDao {
	Logger log = Logger.getLogger(this.getClass());

	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;
	
	@Override
	public List<AdmClientDto> AdmClientList() {
		try{
			return sqlMapClientTemplate.queryForList("AdmClient.AdmClientList");
		} catch(Exception e){
			e.printStackTrace();
			return null;
		}
		
	}

}
