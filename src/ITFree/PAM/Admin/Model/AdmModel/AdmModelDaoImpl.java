package ITFree.PAM.Admin.Model.AdmModel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AdmModelDaoImpl implements AdmModelDao {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;
	
	
	//핸드폰 정보 목록 리스트
	@Override
	public List<AdmModelDto> admModelList() {
		try {
			return sqlMapClientTemplate.queryForList("AdmModel.admModelList");
		} catch (DataAccessException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	//제조사 목록 리스트
	@Override
	public List<AdmModelDto> admCompList() {
		try {
			return sqlMapClientTemplate.queryForList("AdmModel.admCompList");
		} catch (DataAccessException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	//모델정보 입력 완료
	@Override
	public boolean admModelInsertAction(AdmModelDto AMDto) {
		
		try {
			 sqlMapClientTemplate.insert("AdmModel.admModelInsertAction",AMDto );
			 return true;
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

}
