package ITFree.PAM.Seller.Model.Client;

import java.util.List;

public interface ClientInfoDao {

	List<ClientInfoDto> clientList(String brc_id);

}
