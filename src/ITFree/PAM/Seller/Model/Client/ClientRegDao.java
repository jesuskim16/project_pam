package ITFree.PAM.Seller.Model.Client;

import java.util.List;

public interface ClientRegDao {

	List<ModelDto> getModelInfo();
	List<PriceDto> getPriceInfo();
	boolean setCustomInfo(ClientRegDto cRegDto);

}
