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
	
	@Override
	public AdmPriceDto SelectList(long seq) {
		try {
			return (AdmPriceDto) sqlMapClientTemplate.queryForObject("AdmPrice.SelectList", seq);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean AdmPriceInsertAct(AdmPriceDto APDto) {
		try {
			sqlMapClientTemplate.insert("AdmPrice.AdmPriceInsertAct", APDto);
			sqlMapClientTemplate.update("AdmPrice.AdmPriceInsertActARTER", APDto);
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public boolean AdmPriceDeleteAct(AdmPriceDto APDto) {
		try {
			sqlMapClientTemplate.delete("AdmPrice.AdmPriceDeleteAct", APDto);
			sqlMapClientTemplate.update("AdmPrice.AdmPriceDeleteActARTER", APDto);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public boolean AdmPriceUpdateAct(AdmPriceDto APDto) {
		try {
			sqlMapClientTemplate.update("AdmPrice.AdmPriceUpdateAct", APDto);
			sqlMapClientTemplate.update("AdmPrice.AdmPriceUpdateActARTER", APDto);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	

}
