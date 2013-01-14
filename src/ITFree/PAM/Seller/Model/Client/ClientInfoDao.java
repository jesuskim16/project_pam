package ITFree.PAM.Seller.Model.Client;

import java.util.List;

import ITFree.PAM.Agent.Model.SalesMgr.SalesDto;

public interface ClientInfoDao {

	List<ClientInfoDto> clientList(CustPageDto p);

	boolean clientUpdate(ClientInfoDto cIDto);	

	boolean clientDel(long seq);

	int readCount(String brc_id);

}