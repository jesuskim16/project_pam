package ITFree.PAM.Seller.Model.Client;

import java.util.List;

public interface ClientInfoDao {

	List<ClientInfoDto> clientList(String brc_id);

	boolean clientUpdate(ClientInfoDto cIDto);

	List<ClientInfoDto> modelRcdList(ClientInfoPageDto cIPdto);

	List<ClientInfoDto> getModelName();

	long TotalCount(ClientInfoPageDto pageDto);

}
