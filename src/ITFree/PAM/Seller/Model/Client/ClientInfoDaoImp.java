package ITFree.PAM.Seller.Model.Client;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ClientInfoDaoImp implements ClientInfoDao {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

	@Override
	public List<ClientInfoDto> clientList(String brc_id) {
		log.debug("--ClientInfoDaoImp_1"+brc_id);
		return sqlMapClientTemplate.queryForList("clientInfo.getClientInfo",brc_id);
	}

}
