package ITFree.PAM.Seller.Model.Client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ClientRegDaoImp implements ClientRegDao {
	
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
			return (Integer)sqlMapClientTemplate.queryForObject("client.searchRebate", model_code, price_name);			
	}

}
