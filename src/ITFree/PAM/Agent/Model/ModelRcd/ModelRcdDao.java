package ITFree.PAM.Agent.Model.ModelRcd;

import java.util.List;

import ITFree.PAM.Agent.Model.SalesMgr.SalesDto;

public interface ModelRcdDao {

	List<ModelRcdDto> modelRcdList(ModelRcdPageDto MRPdto);

	List<ModelRcdDto> getModelName();

	long TotalCount(ModelRcdPageDto pageDto);

}
