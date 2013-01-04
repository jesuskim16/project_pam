package ITFree.PAM.Seller.Model.Client;

import java.util.List;

public interface ClientRegDao {

	List<ModelDto> getModelInfo();
	List<PriceDto> getPriceInfo();
	boolean clientInsertAct(ClientRegDto cRegDto);
	Integer searchRebate(String model_code,String price_name);

}
