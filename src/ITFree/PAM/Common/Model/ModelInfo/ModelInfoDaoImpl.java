package ITFree.PAM.Common.Model.ModelInfo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ModelInfoDaoImpl implements ModelInfoDao{
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;
	
	@Override
	public List<ModelInfoDto> modelList(ModelInfoPageDto MIPDto) {
		
		try {
			return sqlMapClientTemplate.queryForList("ModelInfo.modelList", MIPDto);
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public long ModelInfoTotalCount() {
		
		try {
			return (long) sqlMapClientTemplate.queryForObject("ModelInfo.ModelInfoTotalCount");
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return 0;
		}
	}

}  

