package ITFree.PAM.Admin.Model.AdmClient;

import java.util.List;

public interface AdmClientDao {

	List<AdmClientDto> AdmClientList(AdmClientPageDto APDto);

	long TotalCount(AdmClientPageDto pageDto);

}
