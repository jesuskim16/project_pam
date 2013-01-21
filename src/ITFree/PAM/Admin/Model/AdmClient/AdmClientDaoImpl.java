package ITFree.PAM.Admin.Model.AdmClient;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AdmClientDaoImpl implements AdmClientDao {
	Logger log = Logger.getLogger(this.getClass());

	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;
	//List//////////////////////////////////////////////////////////////////////////////
	@Override
	public List<AdmClientDto> AdmClientList(AdmClientPageDto APDto) {
		try{
			return sqlMapClientTemplate.queryForList("AdmClient.AdmClientList", APDto);
		} catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<AdmClientDto> ManagerList(M_AdmClientPageDto MPDto) {
		try{
			return sqlMapClientTemplate.queryForList("AdmClient.ManagerList", MPDto); 
		} catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<AdmClientDto> SalesList(S_AdmClientPageDto SPDto) {
		try{
			return sqlMapClientTemplate.queryForList("AdmClient.SalesList", SPDto); 
		} catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public long CListTotalCount(AdmClientPageDto CPDto) {
		return (long) sqlMapClientTemplate.queryForObject("AdmClient.ListTotalCount", CPDto);

	}
	@Override
	public long MListTotalCount(M_AdmClientPageDto MPDto) {
		return (long) sqlMapClientTemplate.queryForObject("AdmClient.MListTotalCount", MPDto);
	}
	
	@Override
	public long SListTotalCount(S_AdmClientPageDto SPDto) {
		return (long) sqlMapClientTemplate.queryForObject("AdmClient.SListTotalCount", SPDto);
	}
	//List//////////////////////////////////////////////////////////////////////////////
	
	@Override
	public AdmClientDto AdmClientView(long seq) {
		try{
			return (AdmClientDto) sqlMapClientTemplate.queryForObject("AdmClient.AdmClientView", seq);
		} catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean AdmClientDelete(AdmClientDto Cdto) {
		try {
			return sqlMapClientTemplate.delete("AdmClient.AdmClientDelete", Cdto) > 0;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	







}
