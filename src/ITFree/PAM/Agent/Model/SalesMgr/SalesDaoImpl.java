package ITFree.PAM.Agent.Model.SalesMgr;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class SalesDaoImpl implements SalesDao {
	Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

	@Override
	public boolean salesRegister_insertAction(SalesDto salesDto) {
		try {
			sqlMapClientTemplate.insert("SaleManagement.salesRegister_insertAction", salesDto);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}	
	}

	@Override
	public List<ZipcodeDto> searchZipcode(String dong) {
		return sqlMapClientTemplate.queryForList("SaleManagement.searchZipcode", dong);
	}

	@Override
	public List<SalesDto> salesInfo_list() {
		return sqlMapClientTemplate.queryForList("SaleManagement.salesInfo_list");
	}

	@Override
	public boolean salesInfo_delete(SalesDto salesDto) {
		try {
			sqlMapClientTemplate.delete("SaleManagement.salesInfo_delete", salesDto);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}	
	}





}
