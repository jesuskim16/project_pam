package ITFree.PAM.Admin.Model.AdmBoard;

public class admPageDto {
	
	private long pg; //현재 페이지	
	private long totalCount; // 총 게시물의 갯수
	private long pageCount; // 총 게시물을 페이지 갯수를 나눈 것.(10개의 게시물이 몇페이지까지 있는지를 나타냄)		
	private long startNum; // 시작페이징 번호
	private long endNum; // 끝 페이징 번호
	private String searchCondition; // 검색 상태
	private String searchKeyword;   // 검색 단어
	private int board_chk;			//게시판 분류
	private long startPage;
	private long endPage;	
	private int pageSize;
	private int blockSize;
	
	public long getPg() {return pg;}
	public void setPg(long pg) {this.pg = pg;}
	public long getTotalCount() {return totalCount;}
	public void setTotalCount(long totalCount) {this.totalCount = totalCount;}
	public long getPageCount() {return pageCount;}
	public void setPageCount(long pageCount) {this.pageCount = pageCount;}
	public long getStartNum() {return startNum;}
	public void setStartNum(long startNum) {this.startNum = startNum;}
	public long getEndNum() {return endNum;}
	public void setEndNum(long endNum) {this.endNum = endNum;}	
	public String getSearchCondition() {return searchCondition;}
	public void setSearchCondition(String searchCondition) {this.searchCondition = searchCondition;}
	public String getSearchKeyword() {return searchKeyword;}
	public void setSearchKeyword(String searchKeyword) {this.searchKeyword = searchKeyword;}
	public int getBoard_chk() {return board_chk;}
	public void setBoard_chk(int board_chk) {this.board_chk = board_chk;}
	public long getStartPage() {return startPage;}
	public void setStartPage(long startPage) {this.startPage = startPage;}
	public long getEndPage() {return endPage;}
	public void setEndPage(long endPage) {this.endPage = endPage;}	
	public int getPageSize() {return pageSize;}
	public void setPageSize(int pageSize) {this.pageSize = pageSize;}
	public int getBlockSize() {return blockSize;}
	public void setBlockSize(int blockSize) {this.blockSize = blockSize;}
	
	@Override
	public String toString() {
		return "admPageDto [pg=" + pg + ", totalCount=" + totalCount
				+ ", pageCount=" + pageCount + ", startNum=" + startNum
				+ ", endNum=" + endNum + ", searchCondition=" + searchCondition
				+ ", searchKeyword=" + searchKeyword + ", board_chk="
				+ board_chk + ", startPage=" + startPage + ", endPage="
				+ endPage + ", pageSize=" + pageSize + ", blockSize="
				+ blockSize + "]";
	}
	
}
