package ITFree.PAM.Admin.Model.AdmBranch;

import java.util.List;

public interface AdmBranchDao {

	String admBranchIdCheck(String brc_id);

	List<AdmBranchZipcodeDto> admBranchZipcode(String dong);

	boolean admBranchInsertAction(AdmBranchDto aBDto);

	List<AdmBranchDto> admBranchList(AdmBranchPageDto ABPDto);

	List<AdmBranchDto> admBranchSelectList();

	AdmBranchDto admBranchModify(long seq);

	boolean admBranchModifyAction(AdmBranchDto aBDto);

	long totalCount();

	boolean admBranchDeleteAction(List<String> seqList);


}
