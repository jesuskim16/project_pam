package ITFree.PAM.Agent.Model.ModelRcd;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ModelRcdDaoImp implements ModelRcdDao {	
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;
	
	//모델별 실적 > 각 모델별 검색결과 및 모델정보를 List형식으로 뿌려주기 위한 메소드
	@Override
	public List<ModelRcdDto> modelRcdList(ModelRcdPageDto MRPdto) {		
		try {
			return sqlMapClientTemplate.queryForList("modelRcd.modelRcdList", MRPdto);
		} catch (Exception e) {			
			e.printStackTrace();
			return null;
		}
	}
	
	//모델별 실적 > 모델이름을 SELECT BOX에 뿌려주기 위한 메소드
	@Override
	public List<ModelRcdDto> getModelName() {		
		try {
			return sqlMapClientTemplate.queryForList("modelRcd.getModelName");
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return null;
		}
	}
	
	//모델별 실적 > 페이징 처리를 위한 게시물의 총 갯수 구하는 메소드
	@Override
	public long TotalCount(ModelRcdPageDto pageDto) {
		
		try {
			return (long) sqlMapClientTemplate.queryForObject("modelRcd.TotalCount", pageDto);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

}
