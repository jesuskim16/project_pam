package ITFree.PAM.Agent.Model.SalesMgr;

import java.util.List;

import ITFree.PAM.Agent.Model.SalesRcd.SalesRcdDto;
import ITFree.PAM.Agent.Model.SalesRcd.SalesRcdPageDto;
import ITFree.PAM.Common.Model.Board.PageDto;

public interface SalesDao {

	//판매점 등록
	boolean salesInsertAction(SalesDto salesDto);

	List<ZipcodeDto> searchZipcode(String dong);

	//판매점 정보
	List<SalesDto> salesList(SalesPageDto p);

	boolean salesUpdate(SalesDto salesDto);

	boolean salesDelete(SalesDto salesDto);

	long TotalCount(SalesPageDto pageDto);
	
	//판매점 순위
	
	List<SalesDto> salesRankList(SalesPageDto pageDto,String SalesRankSelectBox);

	

	



	




}
