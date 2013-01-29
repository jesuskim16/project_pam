package ITFree.PAM.Admin.Model.AdmPrice;

import java.util.List;

public interface AdmPriceDao {

	long TotalCount(AdmPricePageDto pDto);

	List<AdmPriceDto> AdmPriceList(AdmPricePageDto pPDto);

	boolean AdmPriceInsertAct(AdmPriceDto aPDto);

	boolean AdmPriceDeleteAct(AdmPriceDto aPDto);

	boolean AdmPriceUpdateAct(AdmPriceDto aPDto);

	AdmPriceDto SelectList(long seq);

}
