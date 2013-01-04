package ITFree.PAM.Agent.Model.SalesMgr;

import java.util.List;

import ITFree.PAM.Common.Model.Board.PageDto;

public interface SalesDao {

	boolean salesRegister_insertAction(SalesDto salesDto);

	List<ZipcodeDto> searchZipcode(String dong);

	List<SalesDto> salesInfo_list();

	boolean salesUpdate(SalesDto salesDto);

	boolean salesDelete(SalesDto salesDto);




}
