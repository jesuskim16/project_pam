package ITFree.PAM.Admin.Model.AdmClient;

import java.util.List;

public interface AdmClientDao {
	//List//////////////////////////////////////////////////////////////
	List<AdmClientDto> AdmClientList(AdmClientPageDto CPDto);

	List<AdmClientDto> ManagerList(M_AdmClientPageDto MPDto);
	
	List<AdmClientDto> SalesList(S_AdmClientPageDto SPDto);
	
	long CListTotalCount(AdmClientPageDto CPDto);

	long MListTotalCount(M_AdmClientPageDto MPDto);

	long SListTotalCount(S_AdmClientPageDto SPDto);
	////////////////////////////////////////////////////////////////////
	AdmClientDto AdmClientView(long seq);

	boolean AdmClientDelete(AdmClientDto cdto);

	
	

	

}
