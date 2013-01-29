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
	public List<AdmClientDto> AdmClientList(AdmClientPageDto APDto, String count) {
		try{
			if(count.equals("1")){
				return sqlMapClientTemplate.queryForList("AdmClient.AdmClientListStratum", APDto);
			}else{
				return sqlMapClientTemplate.queryForList("AdmClient.AdmClientList", APDto);
			}
				
		} catch(Exception e){
			e.printStackTrace();
			return sqlMapClientTemplate.queryForList("AdmClient.AdmClientList", APDto);
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
	public List<AdmClientDto> SalesList(S_AdmClientPageDto SPDto,String count) {
			try{
				if(count.equals("1") ){
					return sqlMapClientTemplate.queryForList("AdmClient.SalesListStratum", SPDto);
					
				} else {
						return sqlMapClientTemplate.queryForList("AdmClient.SalesList", SPDto);
				}
			} catch(Exception e){
				e.printStackTrace();
				return sqlMapClientTemplate.queryForList("AdmClient.SalesList", SPDto);
			}
		}


	@Override
	public long CListTotalCount(AdmClientPageDto CPDto, String count) {
		try{
			if(count.equals("1") ){
				return (long) sqlMapClientTemplate.queryForObject("AdmClient.ListTotalCountStratum", CPDto);
			} else {
				return (long) sqlMapClientTemplate.queryForObject("AdmClient.ListTotalCount", CPDto);	
			}
		} catch(Exception e){
			e.printStackTrace();
			return (long) sqlMapClientTemplate.queryForObject("AdmClient.ListTotalCount", CPDto);
		}
		
		

	}
	@Override
	public long MListTotalCount(M_AdmClientPageDto MPDto) {
		return (long) sqlMapClientTemplate.queryForObject("AdmClient.MListTotalCount", MPDto);
	}
	
	@Override
	public long SListTotalCount(S_AdmClientPageDto SPDto, String count) {
		try{
			if(count.equals("1") ){
				return (long) sqlMapClientTemplate.queryForObject("AdmClient.SListTotalCountStratum", SPDto);
			} else {
				return (long) sqlMapClientTemplate.queryForObject("AdmClient.SListTotalCount", SPDto);	
			}
		} catch(Exception e){
			e.printStackTrace();
			return (long) sqlMapClientTemplate.queryForObject("AdmClient.SListTotalCount", SPDto);
		}
		
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

	@Override
	public boolean admClientInsertAct(AdmClientDto ACdto) {
		try {
			return (boolean) sqlMapClientTemplate.insert("AdmClient.admClientInsertAct", ACdto);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public List<AdmClientDto> admClientInsertModelList(AdmClientDto ACdto) {
		try {
			return sqlMapClientTemplate.queryForList("AdmClient.admClientInsertModelList", ACdto);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	@Override
	public List<AdmClientDto> admClientInsertPriceList(AdmClientDto ACdto) {
		try {
			return sqlMapClientTemplate.queryForList("AdmClient.admClientInsertPriceList", ACdto);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
		
	}

	@Override
	public int admClientInsertRebate(AdmClientDto ACdto) {
		try {
			return (int) sqlMapClientTemplate.queryForObject("AdmClient.admClientInsertRebate", ACdto);
		} catch (Exception e) {
			e.printStackTrace();
			return (Integer) null;
			
		}
		
		
		
	}

	@Override
	public List<AdmClientDto> admClientViewUpdateModelList(AdmClientDto aCdto) {
		try {
			return sqlMapClientTemplate.queryForList("AdmClient.admClientViewUpdateModelList", aCdto);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<AdmClientDto> admClientViewUpdatePriceList(AdmClientDto aCdto) {
		try {
			return sqlMapClientTemplate.queryForList("AdmClient.admClientViewUpdatePriceList", aCdto);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean AdmClientUpdateAct(AdmClientDto aCdto) {
		try {
			return sqlMapClientTemplate.update("AdmClient.AdmClientUpdateAct", aCdto) > 0;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	
		


	







}
