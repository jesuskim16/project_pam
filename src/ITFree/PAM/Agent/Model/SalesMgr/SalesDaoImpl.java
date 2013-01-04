package ITFree.PAM.Agent.Model.SalesMgr;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import ITFree.PAM.Common.Model.Board.PageDto;


@Repository
public class SalesDaoImpl implements SalesDao {
	Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

	@Override
	public boolean salesRegister_insertAction(SalesDto salesDto) {
		try {
			sqlMapClientTemplate.insert("SaleMgr.salesRegister_insertAction", salesDto);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}	
	}

	@Override
	public List<ZipcodeDto> searchZipcode(String dong) {
		return sqlMapClientTemplate.queryForList("SaleMgr.searchZipcode", dong);
	}

	@Override
	public boolean salesUpdate(SalesDto salesDto) {
		try {
			sqlMapClientTemplate.update("SaleMgr.salesUpdate", salesDto);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public List<SalesDto> salesList(SalesPageDto p) {
		return sqlMapClientTemplate.queryForList("SaleMgr.salesList", p);
	}

	@Override
	public boolean salesDelete(SalesDto salesDto) {
		try {
			sqlMapClientTemplate.delete("SaleMgr.salesDelete", salesDto);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public int readCount() {
		return (int) sqlMapClientTemplate.queryForObject("SaleMgr.readCount");
	}




		
	






}
