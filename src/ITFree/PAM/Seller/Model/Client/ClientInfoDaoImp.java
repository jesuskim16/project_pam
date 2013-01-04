package ITFree.PAM.Seller.Model.Client;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ClientInfoDaoImp implements ClientInfoDao {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

	@Override
	public List<ClientInfoDto> clientList(String brc_id) {
		return sqlMapClientTemplate.queryForList("clientInfo.getClientInfo",brc_id);
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
	public List<ClientInfoDto> modelRcdList(ClientInfoPageDto cIPdto) {		
		try {
			return sqlMapClientTemplate.queryForList("modelRcd.modelRcdList", cIPdto);
		} catch (Exception e) {			
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<ClientInfoDto> getModelName() {		
		try {
			return sqlMapClientTemplate.queryForList("modelRcd.getModelName");
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public long TotalCount(ClientInfoPageDto pageDto) {
		
		try {
			return (long) sqlMapClientTemplate.queryForObject("modelRcd.TotalCount", pageDto);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

}
