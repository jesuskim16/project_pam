package ITFree.PAM.Seller.Model.Client;

public class CustPageDto {
	private long pg; //현재 페이지
	private long totalCount; // 총 게시물의 갯수	
	private int pageSize = 10; // 페이징 갯수 (10페이지까지 갈 수 있게 표시하겠다는 내용)
	private int blockSize = 10; // 한 페이지에 표시할 게시물의 갯수	
	private long startNum; //(pg - 1) * pageSize + 1; // 시작페이징 번호
	private long endNum;  // 끝 페이징 번호	
	private long pageCount; // 총 게시물을 페이지 갯수를 나눈 것.(10개의 게시물이 몇페이지까지 있는지를 나타냄)
	private long startPage;
	private long endPage;	
	
	private String brc_id;
	
	//setter
	public void setPg(long pg) {
		this.pg = pg;
		this.startNum = (pg - 1) * pageSize + 1;
		this.endNum = pg * pageSize;		
		this.startPage = ((pg-1) / blockSize) * blockSize + 1;
		this.endPage = ((pg-1) / blockSize) * blockSize + blockSize;
	}
	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
		this.pageCount = totalCount / pageSize + ((totalCount % pageSize > 0)? 1 : 0);
		}
	public void setBrc_id(String brc_id) {this.brc_id = brc_id;}
	
	//getter
	public long getPg() {return pg;}	
	public long getTotalCount() {return totalCount;}	
	public long getPageCount() {return pageCount;}	
	public long getStartNum() {return startNum;}	     
	public long getEndNum() {return endNum;}	
	public int getPageSize() {return pageSize;}	
	public int getBlockSize() {return blockSize;}	
	public long getStartPage() {return startPage;}
	public long getEndPage() {
		if(pageCount < endPage) endPage = pageCount;
		return endPage;
	}
	
	public String getBrc_id() {return brc_id;}
	
	@Override
	public String toString() {
		return "CustPageDto [pg=" + pg + ", totalCount=" + totalCount
				+ ", pageSize=" + pageSize + ", blockSize=" + blockSize
				+ ", startNum=" + startNum + ", endNum=" + endNum
				+ ", pageCount=" + pageCount + ", startPage=" + startPage
				+ ", endPage=" + endPage + ", brc_id=" + brc_id + "]";
	}
	
	
	
}
