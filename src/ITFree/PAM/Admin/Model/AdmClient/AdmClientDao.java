package ITFree.PAM.Admin.Model.AdmClient;

import java.util.List;

public interface AdmClientDao {
	//List//////////////////////////////////////////////////////////////
	List<AdmClientDto> AdmClientList(AdmClientPageDto CPDto, String count);

	List<AdmClientDto> ManagerList(M_AdmClientPageDto MPDto);
	
	List<AdmClientDto> SalesList(S_AdmClientPageDto SPDto, String count);
	
	long CListTotalCount(AdmClientPageDto CPDto, String count);

	long MListTotalCount(M_AdmClientPageDto MPDto);

	long SListTotalCount(S_AdmClientPageDto SPDto, String count);
	////////////////////////////////////////////////////////////////////
	AdmClientDto AdmClientView(long seq);

	boolean AdmClientDelete(AdmClientDto cdto);

	boolean admClientInsertAct(AdmClientDto ACdto);

	List<AdmClientDto> admClientInsertModelList(AdmClientDto ACdto);
	List<AdmClientDto> admClientInsertPriceList(AdmClientDto ACdto);

	int admClientInsertRebate(AdmClientDto ACdto);

	List<AdmClientDto> admClientViewUpdateModelList(AdmClientDto aCdto);
	List<AdmClientDto> admClientViewUpdatePriceList(AdmClientDto aCdto);

	boolean AdmClientUpdateAct(AdmClientDto aCdto);

	
	
	

	

}
