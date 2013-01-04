package ITFree.PAM.Agent.Model.ModelRcd;

import java.util.List;

public interface ModelRcdDao {

	List<ModelRcdDto> modelRcdList(ModelRcdPageDto MRPdto);

	List<ModelRcdDto> getModelName();

	long TotalCount(ModelRcdPageDto pageDto);

}
