package ITFree.PAM.Agent.Model.SalesMgr;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import ITFree.PAM.Agent.Model.SalesRcd.SalesRcdDto;
import ITFree.PAM.Agent.Model.SalesRcd.SalesRcdPageDto;
import ITFree.PAM.Common.Model.Board.PageDto;


@Repository
public class SalesDaoImpl implements SalesDao {
	Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

	//판매점 등록
	@Override
	public boolean salesInsertAction(SalesDto salesDto) {
		try {
			sqlMapClientTemplate.insert("SaleMgr.salesInsertAction", salesDto);
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
	//-----------------------------------------------------------------------------

	//판매점 정보
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
	public long TotalCount(SalesPageDto pageDto) {
		return (int) sqlMapClientTemplate.queryForObject("SaleMgr.readCount");
	}
	//-----------------------------------------------------------------------------
	
	
	//판매점  순위
	@Override
	public List<SalesDto> salesRankList(SalesPageDto pageDto, String SalesRankSelectBox) {
		try {
			if(SalesRankSelectBox.equals("1")){
				return sqlMapClientTemplate.queryForList("SaleMgr.salesRankListNumber", pageDto);
			} else if(SalesRankSelectBox.equals("2")) {
				return sqlMapClientTemplate.queryForList("SaleMgr.salesRankListRebate", pageDto);
			} 
		} catch (Exception e) {			
			e.printStackTrace();
			
		}
		return null;
		
	}
	//----------------------------------------------------------------------------------------




		
	






}
