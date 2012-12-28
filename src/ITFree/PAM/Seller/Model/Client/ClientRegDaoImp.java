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
	public boolean setCustomInfo(ClientRegDto cRegDto) {
		return (Integer)sqlMapClientTemplate.insert("client.setCustomInfo",cRegDto)>0;
	}

}
