package ITFree.PAM.Seller.Model.Client;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import ITFree.PAM.Agent.Model.SalesMgr.SalesDto;

@Repository
public class ClientInfoDaoImp implements ClientInfoDao {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

	@Override
	public List<ClientInfoDto> clientList(String brc_id) {
		return sqlMapClientTemplate.queryForList("clientInfo.getClientInfo",brc_id);
	}

	@Override
	public boolean clientUpdate(ClientInfoDto cIDto) {
		try {
			sqlMapClientTemplate.update("clientInfo.updateClient",cIDto);
			return true;	
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
	
	//모델별 실적 > 각 모델별 검색결과 및 모델정보를 List형식으로 뿌려주기 위한 메소드
	@Override
	public List<ClientInfoDto> modelRcdList(ClientInfoPageDto cIPdto) {		
		try {
			return sqlMapClientTemplate.queryForList("modelRcd.modelRcdList", cIPdto);
		} catch (Exception e) {			
			e.printStackTrace();
			return null;
		}
	}
	
	//모델별 실적 > 모델이름을 SELECT BOX에 뿌려주기 위한 메소드
	@Override
	public List<ClientInfoDto> getModelName() {		
		try {
			return sqlMapClientTemplate.queryForList("modelRcd.getModelName");
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return null;
		}
	}
	
	//모델별 실적 > 페이징 처리를 위한 게시물의 총 갯수 구하는 메소드
	@Override
	public long TotalCount(ClientInfoPageDto pageDto) {
		
		try {
			return (long) sqlMapClientTemplate.queryForObject("modelRcd.TotalCount", pageDto);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	//판매점 실적 > 판매점 이름 SELECT BOX에 뿌려주기 위한 메소드
	@Override
	public List<SalesDto> getBranchName() {
		
		try {
			return sqlMapClientTemplate.queryForList("salesRcd.getBranchName");
		} catch (Exception e) {			
			e.printStackTrace();
			return null;
		}
	}

}
