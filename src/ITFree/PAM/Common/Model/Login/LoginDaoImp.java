package ITFree.PAM.Common.Model.Login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDaoImp implements LoginDao {	

	@Autowired SqlMapClientTemplate sqlMapClientTemplate;

	@Override
	public LoginDto getLoginInfo(LoginDto branchDto) {
		return (LoginDto) sqlMapClientTemplate.queryForObject("login.getLoginInfo", branchDto);
	}

	@Override
	public void setLoginLog(LoginDto branchDto) {		
		sqlMapClientTemplate.insert("login.setLoginLog",branchDto);
	}
}
