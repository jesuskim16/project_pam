package ITFree.PAM.Admin.Model.AdmPrice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import ITFree.PAM.Admin.Model.AdmClient.AdmClientDao;

@Repository
public class AdmPriceDaoImpl implements AdmPriceDao {

	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;
	
	@Override
	public long TotalCount(AdmPricePageDto APPDto) {
		return (long) sqlMapClientTemplate.queryForObject("AdmPrice.TotalCount", APPDto);
	}

	@Override
	public List<AdmPriceDto> AdmPriceList(AdmPricePageDto APDto) {
		try {
			return sqlMapClientTemplate.queryForList("AdmPrice.AdmPriceList", APDto);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}

}
