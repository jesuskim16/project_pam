package ITFree.PAM.Common.Model.Board;

public class PageDto {
	
	private long pg; //현재 페이지
	
	private long totalCount; // 총 게시물의 갯수
	private long pageCount; // 총 게시물을 페이지 갯수를 나눈 것.(10개의 게시물이 몇페이지까지 있는지를 나타냄)
	
	
	private long startNum; // 시작페이징 번호
	private long endNum; // 끝 페이징 번호
	
	private int pageSize = 10; // 페이징 갯수 (10페이지까지 갈 수 있게 표시하겠다는 내용)
	private int blockSize = 10; // 한 페이지에 표시할 게시물의 갯수
	
	private String pHtml; // HTML문자열을 저장할 변수
	
	private String searchCondition; // 검색 상태
	private String searchKeyword;   // 검색 단어
	
	private int board_chk;			//게시판 분류
	
	//기본 생성자(DI주입을 위해 꼭 생성해야함)
	public PageDto() {
		// TODO Auto-generated constructor stub
	}
	
	public PageDto(long pg, long totalCount ,String searchCondition2, String searchKeyword2) {
		//넘어온  parameter값을 각 변수에 할당
		this.pg = pg;
		this.totalCount = totalCount;
		this.searchCondition = searchCondition2;
		this.searchKeyword = searchKeyword2;
		
		startNum = (pg - 1) * pageSize + 1; // 시작 페이징 값을 계산
		endNum = pg * pageSize; // 끝 페이징 값을 계산
		
		pageCount = totalCount / pageSize + (totalCount % pageSize > 0 ? 1 : 0); // 총 페이징갯수 계산 알고리즘
		setpHtml(getPageHtml()); //HTML값을 할당하기 위해 getPageHtml메소드 호출
	}
	
	//HTML처리하는 메소드
	private String getPageHtml() {
		
		// 검색상태와 단어가 null값일 경우 공백을 할당(Web의 검색창에 null이 표시될 수 있으므로 설정해야함)
		if(searchCondition == null && searchKeyword == null){
			this.searchCondition = "";
			this.searchKeyword = "";
		}
		
		StringBuffer pageHtml = new StringBuffer(); //긴 문자열 저장을 위한 스트링버퍼 사용
		long startPage = ((pg-1) / blockSize) * blockSize + 1; //시작 페이지값 계산
		long endPage = ((pg-1) / blockSize) * blockSize + blockSize; // 끝 페이지값 계산
		String search = "&searchCondition=" + searchCondition +"&searchKeyword="+ searchKeyword ; //get방식으로 검색값을 넘겨주기 위해 분리한 변수
		String UrlName = "freeBoardList.do";
		if(pageCount < endPage) endPage = pageCount; //끝 페이지가 총 페이지랑 안맞을 경우 10개 단위의 페이징으로 표시하지 않기 위해 값을 할당하는 것
		
		//총 페이징 갯수가 10개 이상일때, 10개 이상 페이지 이동을 했을때 뒤로가기 아이콘을 표시하며, 10개 단위의 이동을 위한 페이지 이동버튼
		if(startPage != 1){
			pageHtml.append("<td width='18' align='left'><a href='"+UrlName+"?pg="+(startPage-1)+search+"'>" +
							"<img src='img/arrow_left.gif' width='21' height='21' " +
							"</td><td width='10'>&nbsp;</td>" +
							"<td class='Text_gray2_11px'>");
		}
		
		
		for(long p = startPage; p <= endPage; p++){
			//현재 페이지가 아닐때(즉 다른페이지로 넘어가야 할 때 링크를 설정해줌. 검색설정값도 함께)
			if(p != pg){
				pageHtml.append("<font class='style2'><a href='"+UrlName+"?pg=" + p + search + "'>" + 
								+ p + "</a></font>&nbsp;");
			// 현재 보고있는 페이지 일경우 	
			}else{
				pageHtml.append("<font color='red'><b>"+p+"</b></font>&nbsp;");
			}
		}
		
		//총 페이징 갯수가 10개 이상일때, 앞으로가기 아이콘을 표시하며, 10개 단위의 이동을 위한 페이지 이동버튼
		if(endPage != pageCount){
			pageHtml.append("<td width='10'>&nbsp;</td>" +
							"<td width='18' align='right'><a href='"+UrlName+"?pg="+(endPage+1)+search+"'>"  +
							"<img src='img/arrow_right.gif' width='21' height='21' " +
							" ></a></td>");
		}
		
		//모든 HTML값 설정이 끝난 뒤 모든 문자열을 리턴~
		return pageHtml.toString();
	}
	

	public long getPg() {
		return pg;
	}
	public void setPg(long pg) {
		this.pg = pg;
	}
	public long getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
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

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}	

	public int getBoard_chk() {
		return board_chk;
	}

	public void setBoard_chk(int board_chk) {
		this.board_chk = board_chk;
	}

	@Override
	public String toString() {
		return "PageDto [pg=" + pg + ", totalCount=" + totalCount
				+ ", pageCount=" + pageCount + ", startNum=" + startNum
				+ ", endNum=" + endNum + ", pageSize=" + pageSize
				+ ", blockSize=" + blockSize + ", pHtml=" + pHtml
				+ ", searchCondition=" + searchCondition + ", searchKeyword="
				+ searchKeyword + ", board_chk=" + board_chk + "]";
	}


}
