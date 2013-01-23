package ITFree.PAM.Admin.Model.AdmBranch;

import java.util.List;

public interface AdmBranchDao {

	String admBranchIdCheck(String brc_id);

	List<AdmBranchZipcodeDto> admBranchZipcode(String dong);

	boolean admBranchInsertAction(AdmBranchDto aBDto);

	List<AdmBranchDto> admBranchList();

	List<AdmBranchDto> admBranchSelectList();


}
