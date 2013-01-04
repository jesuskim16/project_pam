package ITFree.PAM.Agent.Model.SalesRcd;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class SalesRcdDaooImp implements SalesRcdDao {

	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;
	
	@Override
	public List<SalesRcdDto> salesRcdList(SalesRcdPageDto SRPDto) {
		try {
			return sqlMapClientTemplate.queryForList("salesRcd.salesRcdList", SRPDto);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	//판매점 실적 > 판매점 이름 SELECT BOX에 뿌려주기 위한 메소드
	@Override
	public List<SalesRcdDto> getBranchName() {
		
		try {
			return sqlMapClientTemplate.queryForList("salesRcd.getBranchName");
		} catch (Exception e) {			
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public long TotalCount(SalesRcdPageDto pageDto) {
		
		try {
			return (long) sqlMapClientTemplate.queryForObject("salesRcd.TotalCount", pageDto);
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return 0;
		}
	}
	
}
