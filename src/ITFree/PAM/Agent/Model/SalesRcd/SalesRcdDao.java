package ITFree.PAM.Agent.Model.SalesRcd;

import java.util.List;

public interface SalesRcdDao {

	List<SalesRcdDto> getBranchName();

	long TotalCount(SalesRcdPageDto pageDto);

	long TotalRevenue(SalesRcdPageDto pageDto);
	
	List<SalesRcdDto> salesRcdList(SalesRcdPageDto SRPDto);

	
	
	








}
