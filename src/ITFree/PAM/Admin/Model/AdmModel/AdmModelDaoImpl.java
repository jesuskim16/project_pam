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
	public List<AdmModelDto> admModelList(AdmModelPageDto AMPDto) {
		try {
			return sqlMapClientTemplate.queryForList("AdmModel.admModelList", AMPDto);
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
	
	//모델정보 삭제 부분
	@Override
	public boolean admModelListDeleteAction(List<String> seqList) {
		try {
			sqlMapClientTemplate.delete("AdmModel.admModelListDeleteAction", seqList);
			return true;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	//수정페이지 보여지는 부분
	@Override
	public AdmModelDto admModelListModify(long seq) {
		try {
			return (AdmModelDto) sqlMapClientTemplate.queryForObject("AdmModel.admModelListModify", seq);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	//수정 완료
	@Override
	public boolean admModelListModifyAction(AdmModelDto AMDto) {
		try {
			return sqlMapClientTemplate.update("AdmModel.admModelListModifyAction", AMDto) > 0;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	//모델 총 갯수
	@Override
	public long admModelTotalCount() {		
		try {
			return (long) sqlMapClientTemplate.queryForObject("AdmModel.admModelTotalCount");
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}

}
