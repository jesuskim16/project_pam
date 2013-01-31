package ITFree.PAM.Agent.Model.ModelRcd;

import java.util.List;

import ITFree.PAM.Agent.Model.SalesRcd.SalesRcdPageDto;

public interface ModelRcdDao {

	List<ModelRcdDto> modelRcdList(ModelRcdPageDto MRPdto);

	List<ModelRcdDto> getModelName();

	long TotalCount(ModelRcdPageDto pageDto);
	
	long TotalRevenue(ModelRcdPageDto pageDto);

}
