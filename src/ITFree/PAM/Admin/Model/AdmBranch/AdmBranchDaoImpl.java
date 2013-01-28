package ITFree.PAM.Admin.Model.AdmBranch;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AdmBranchDaoImpl implements AdmBranchDao {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

	// 지점목록 불러오기
	@Override
	public List<AdmBranchDto> admBranchList(AdmBranchPageDto ABPDto) {
		try {
			return sqlMapClientTemplate.queryForList("AdmBranch.admBranchList" , ABPDto);
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return null;
		}
	}
	
	// 대리점 목록 불러오기
	@Override
	public List<AdmBranchDto> admBranchSelectList() {
		try {
			return sqlMapClientTemplate.queryForList("AdmBranch.admBranchSelectList");
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return null;
		}
	}
	
	// ID중복체크하는 부분
	@Override
	public String admBranchIdCheck(String brc_id) {
		try {
			return (String) sqlMapClientTemplate.queryForObject("AdmBranch.admBranchIdCheck", brc_id);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	//지점 수정부분(ajax)
	@Override
	public AdmBranchDto admBranchModify(long seq) {
		
		try {
			return (AdmBranchDto)sqlMapClientTemplate.queryForObject("AdmBranch.admBranchModify" , seq);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	//회원가입 부분
	@Override
	public boolean admBranchInsertAction(AdmBranchDto ABDto) {		
		try {
			sqlMapClientTemplate.insert("AdmBranch.admBranchInsertAction", ABDto);
			return true;
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return false;
		}
	}
	
	//회원정보 수정 부분
	@Override
	public boolean admBranchModifyAction(AdmBranchDto ABDto) {
		try {
			sqlMapClientTemplate.update("AdmBranch.admBranchModifyAction" , ABDto);
			return true;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	// 우편번호 검색하는 부분
	@Override
	public List<AdmBranchZipcodeDto> admBranchZipcode(String dong) {
		
		try {
			return sqlMapClientTemplate.queryForList("AdmBranch.admBranchZipcode", dong);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	//게시물 총 갯수 갖고오는 부분
	@Override
	public long totalCount() {		
		try {
			return (long) sqlMapClientTemplate.queryForObject("AdmBranch.totalCount");
		} catch (DataAccessException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	//게시물 삭제 부분
	@Override
	public boolean admBranchDeleteAction(List<String> seqList) {
		
		try {
			return sqlMapClientTemplate.update("AdmBranch.admBranchDeleteAction" , seqList ) > 0;
		} catch (DataAccessException e) {		
			e.printStackTrace();
			return false;
		}
	}
	

}
