package ITFree.PAM.Admin.Model.AdmPrice;

import ITFree.PAM.Admin.Controller.AdmClientAct;

public class AdmPricePageDto {
	private long pg; //현재 페이지
	
	private long TotalCount; // 총 게시물의 갯수
	private long pageCount; // 총 게시물을 페이지 갯수를 나눈 것.(10개의 게시물이 몇페이지까지 있는지를 나타냄)
	
	
	private long startNum; // 시작페이징 번호
	private long endNum; // 끝 페이징 번호
	
	private int pageSize = 10; // 페이징 갯수 (10페이지까지 갈 수 있게 표시하겠다는 내용)
	private int blockSize = 10; // 한 페이지에 표시할 게시물의 갯수
	
	private String pHtml; // HTML문자열을 저장할 변수 
	private String UrlName;
	
	//기본 생성자(DI주입을 위해 꼭 생성해야함)
	public AdmPricePageDto() {
		// TODO Auto-generated constructor stub
	}
	
	public AdmPricePageDto(long pg, long TotalCount) {
		//넘어온  parameter값을 각 변수에 할당
		this.pg = pg;
		this.TotalCount = TotalCount;
		
		
		startNum = (pg - 1) * pageSize + 1; // 시작 페이징 값을 계산
		endNum = (pg * pageSize); // 끝 페이징 값을 계산
		
		pageCount = TotalCount / pageSize + (TotalCount % pageSize > 0 ? 1 : 0); // 총 페이징갯수 계산 알고리즘
		
	
	}

	public long getPg() {
		return pg;
	}

	public void setPg(long pg) {
		this.pg = pg;
	}

	public long getTotalCount() {
		return TotalCount;
	}

	public void setTotalCount(long totalCount) {
		TotalCount = totalCount;
	}

	public long getPageCount() {
		return pageCount;
	}

	public void setPageCount(long pageCount) {
		this.pageCount = pageCount;
	}

	public long getStartNum() {
		return startNum;
	}

	public void setStartNum(long startNum) {
		this.startNum = startNum;
	}

	public long getEndNum() {
		return endNum;
	}

	public void setEndNum(long endNum) {
		this.endNum = endNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getBlockSize() {
		return blockSize;
	}

	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}

	public String getpHtml() {
		return pHtml;
	}

	public void setpHtml(String pHtml) {
		this.pHtml = pHtml;
	}

	public String getUrlName() {
		return UrlName;
	}

	public void setUrlName(String urlName) {
		UrlName = urlName;
	}
	
	
	
	
}
