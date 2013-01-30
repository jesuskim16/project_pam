package ITFree.PAM.Admin.Model.AdmModel;

import java.util.List;

public interface AdmModelDao {

	List<AdmModelDto> admModelList(AdmModelPageDto AMPDto);

	List<AdmModelDto> admCompList();

	boolean admModelInsertAction(AdmModelDto aMDto);

	boolean admModelListDeleteAction(List<String> seqList);

	AdmModelDto admModelListModify(long seq);

	boolean admModelListModifyAction(AdmModelDto aMDto);

	long admModelTotalCount();

}
