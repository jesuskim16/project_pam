package ITFree.PAM.Admin.Model.AdmRebate;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class AdmRebateDaoImp implements AdmRebateDao {
	private Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;
	
	@Override
	public ArrayList<String> getPriceName() {
		return (ArrayList<String>) sqlMapClientTemplate.queryForList("admRebate.getPriceName");
	}
	
	@Override
	public ArrayList<HashMap<String, String>> getPriceTable(
			List<String> priceName) {
		return (ArrayList<HashMap<String, String>>) sqlMapClientTemplate.queryForList("admRebate.rebateTable",priceName);
	}

	@Override
	public boolean updatePrice(Map<String, Object> updateInfo) {
		log.debug("---start["+"AdmRebateDaoImp."+"updatePrice"+"]");
		try {
			sqlMapClientTemplate.update("admRebate.updatePrice",updateInfo);
			return true;	
		} catch (Exception e) {
			return false;
		}
		
	}	
	
}
