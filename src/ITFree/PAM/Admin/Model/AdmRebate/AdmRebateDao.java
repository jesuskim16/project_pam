package ITFree.PAM.Admin.Model.AdmRebate;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface AdmRebateDao {

	ArrayList<String> getPriceName();

	ArrayList<HashMap<String, String>> getPriceTable(List<String> priceName);

	boolean updatePrice(Map<String, Object> updateInfo);

	

}
