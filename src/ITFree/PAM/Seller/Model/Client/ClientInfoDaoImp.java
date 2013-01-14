package ITFree.PAM.Seller.Model.Client;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import ITFree.PAM.Agent.Model.SalesMgr.SalesDto;

@Repository
public class ClientInfoDaoImp implements ClientInfoDao {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

	@Override
	public List<ClientInfoDto> clientList(CustPageDto p) {
		log.debug("---clientList_2"+p);
		return sqlMapClientTemplate.queryForList("clientInfo.getClientInfo", p);
	}

	@Override
	public boolean clientUpdate(ClientInfoDto cIDto) {
		try {
			sqlMapClientTemplate.update("clientInfo.updateClient",cIDto);
			return true;	
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}		
	}

	@Override
	public boolean clientDel(long seq) {
		try {
			sqlMapClientTemplate.delete("clientInfo.clientDel",seq);
			return true;	
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public int readCount(String brc_id) {
		return (int) sqlMapClientTemplate.queryForObject("clientInfo.readCount",brc_id);
	}
	
}
