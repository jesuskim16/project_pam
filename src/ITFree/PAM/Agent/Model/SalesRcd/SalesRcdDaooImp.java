package ITFree.PAM.Agent.Model.SalesRcd;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class SalesRcdDaooImp implements SalesRcdDao {

	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;
	
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
	
}
