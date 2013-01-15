package ITFree.PAM.Admin.Model.AdmClient;

import java.util.List;

public interface AdmClientDao {

	List<AdmClientDto> AdmClientList(AdmClientPageDto aPDto);

	long TotalCount(AdmClientPageDto pageDto);

}
