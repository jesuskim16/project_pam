package ITFree.PAM.Seller.Model.Client;

import java.util.List;

import ITFree.PAM.Agent.Model.SalesMgr.SalesDto;

public interface ClientInfoDao {

	List<ClientInfoDto> clientList(String brc_id);

	boolean clientUpdate(ClientInfoDto cIDto);	

	boolean clientDel(long seq);

}