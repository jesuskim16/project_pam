package ITFree.PAM.Common.Model.Board;

import org.springframework.web.multipart.MultipartFile;

public class BoardDto {	
	
	private long rown;
	private long seq; 		
	private int board_chk; 	
	private String title; 		
	private String content; 	
	private long readcount; 	
	private long rp_seq; 		
	private String write_date; 	
	private String write_ip;
	private String brc_id;
	private String brc_name;
	private long prev_seq;
	private long next_seq;
	private int rp_cnt;
	private String filename;
	
	private MultipartFile upFile;
	
	private String board_name;
	
	public long getSeq() {
		return seq;
	}
	public void setSeq(long seq) {
		this.seq = seq;
	}	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public long getReadcount() {
		return readcount;
	}
	public void setReadcount(long readcount) {
		this.readcount = readcount;
	}
	public long getRp_seq() {
		return rp_seq;
	}
	public void setRp_seq(long rp_seq) {
		this.rp_seq = rp_seq;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	public String getWrite_ip() {
		return write_ip;
	}
	public void setWrite_ip(String write_ip) {
		this.write_ip = write_ip;
	}
	public String getBrc_id() {
		return brc_id;
	}
	public void setBrc_id(String brc_id) {
		this.brc_id = brc_id;
	}
	public String getBrc_name() {
		return brc_name;
	}
	public void setBrc_name(String brc_name) {
		this.brc_name = brc_name;
	}	
	public long getRown() {
		return rown;
	}
	public void setRown(long rown) {
		this.rown = rown;
	}
	public long getPrev_seq() {
		return prev_seq;
	}
	public void setPrev_seq(long prev_seq) {
		this.prev_seq = prev_seq;
	}
	public long getNext_seq() {
		return next_seq;
	}
	public void setNext_seq(long next_seq) {
		this.next_seq = next_seq;
	}
	public int getRp_cnt() {
		return rp_cnt;
	}
	public void setRp_cnt(int rp_cnt) {
		this.rp_cnt = rp_cnt;
	}
	public int getBoard_chk() {
		return board_chk;
	}	
	public void setBoard_chk(int board_chk) {
		this.board_chk = board_chk;
	}	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public MultipartFile getUpFile() {
		return upFile;
	}
	public void setUpFile(MultipartFile upFile) {
		this.upFile = upFile;
	}	
	
	public String getBoard_name() {
		return board_name;
	}
	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}
	
	@Override
	public String toString() {
		return "BoardDto [rown=" + rown + ", seq=" + seq + ", board_chk="
				+ board_chk + ", title=" + title + ", content=" + content
				+ ", readcount=" + readcount + ", rp_seq=" + rp_seq
				+ ", write_date=" + write_date + ", write_ip=" + write_ip
				+ ", brc_id=" + brc_id + ", brc_name=" + brc_name
				+ ", prev_seq=" + prev_seq + ", next_seq=" + next_seq
				+ ", rp_cnt=" + rp_cnt + ", filename=" + filename + ", upFile="
				+ upFile + "]";
	}
	
	
	
	
}
