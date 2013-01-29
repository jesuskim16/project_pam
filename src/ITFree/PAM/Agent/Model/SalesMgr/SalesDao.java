package ITFree.PAM.Agent.Model.SalesMgr;

import java.util.List;

public interface SalesDao {

	//판매점 등록
	boolean salesInsertAction(SalesDto salesDto);

	List<ZipcodeDto> searchZipcode(String dong);

	//판매점 정보
	List<SalesDto> salesList(SalesInfoPageDto SIPDto);

	boolean salesUpdate(SalesDto salesDto);

	boolean salesDelete(SalesDto salesDto);

	long InfoTotalCount(SalesInfoPageDto sipDto);
	
	
	
	//판매점 순위
	
	List<SalesDto> salesRankList(SalesRankPageDto SRPDto,String SalesRankSelectBox);
	
	long RankTotalCount(SalesRankPageDto srpDto);

	String salesIdCheck(String brc_id);

	

	



	




}
