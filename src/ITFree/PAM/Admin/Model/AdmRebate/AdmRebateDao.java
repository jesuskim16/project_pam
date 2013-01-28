package ITFree.PAM.Admin.Model.AdmRebate;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public interface AdmRebateDao {

	ArrayList<String> getPriceName();

	ArrayList<HashMap<String, String>> getPriceTable(List<String> priceName);

}
