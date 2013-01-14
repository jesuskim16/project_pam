package ITFree.PAM.Seller.Model.Client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ClientRegDaoImp implements ClientRegDao {
	private Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

	@Override
	public List<ModelDto> getModelInfo() {
		return (List<ModelDto>) sqlMapClientTemplate.queryForList("client.getModelInfo");
	}

	@Override
	public List getPriceInfo() {
		return (List<PriceDto>) sqlMapClientTemplate.queryForList("client.getPriceInfo");	
	}

	@Override
	public boolean clientInsertAct(ClientRegDto cRegDto) {
		try {
			sqlMapClientTemplate.insert("client.clientInsertAct",cRegDto);
			return true ;	
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public Integer searchRebate(String model_code, String price_name) {	
			log.debug("---searchRebate_2 : "+model_code+" : "+price_name);
			Map<String, String> rebateInfo = new HashMap<String, String>();
			rebateInfo.put("model_code",model_code);
			rebateInfo.put("price_name", price_name);
			
			return (Integer)sqlMapClientTemplate.queryForObject("client.searchRebate",rebateInfo);			
	}

}
