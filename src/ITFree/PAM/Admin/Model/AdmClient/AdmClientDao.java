package ITFree.PAM.Admin.Model.AdmClient;

import java.util.List;

public interface AdmClientDao {

	List<AdmClientDto> AdmClientList(AdmClientPageDto APDto);

	long ListTotalCount(AdmClientPageDto pageDto);

	AdmClientDto AdmClientView(long seq);

	boolean AdmClientDelete(AdmClientDto cdto);

}
