package ITFree.PAM.Common.Model.Login;

public interface LoginDao {

	LoginDto getLoginInfo(LoginDto branchDto);

	void setLoginLog(LoginDto branchDto);


	

}
