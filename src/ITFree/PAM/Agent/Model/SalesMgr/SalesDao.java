package ITFree.PAM.Agent.Model.SalesMgr;

import java.util.List;

public interface SalesDao {

	boolean salesRegister_insertAction(SalesDto salesDto);

	List<ZipcodeDto> searchZipcode(String dong);

	List<SalesDto> salesInfo_list();

	boolean salesInfo_delete(SalesDto salesDto);

	boolean salesUpdate(SalesDto salesDto);



}
