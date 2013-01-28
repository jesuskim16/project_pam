package ITFree.PAM.Admin.Model.AdmModel;

import java.util.List;

public interface AdmModelDao {

	List<AdmModelDto> admModelList();

	List<AdmModelDto> admCompList();

	boolean admModelInsertAction(AdmModelDto aMDto);

}
