package ITFree.PAM.Admin.Model.AdmRebate;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class AdmRebateDaoImp implements AdmRebateDao {

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
	
}
