package ITFree.PAM.Common.Model.ModelInfo;

import java.util.List;

public interface ModelInfoDao {

	List<ModelInfoDto> modelList(ModelInfoPageDto mIPDto);

	long ModelInfoTotalCount();

	long ModelInfoRankTotalCount();

	List<ModelInfoDto> modelRank(ModelInfoRankPageDto mIRPDto);

}
