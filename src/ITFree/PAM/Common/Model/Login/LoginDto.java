package ITFree.PAM.Common.Model.Login;

public class LoginDto {

	private int 	seq;			//seq	               		
	private String 	brc_id; 		//지점ID(PK)            
	private String 	attach_id; 	    //관리점ID               
	private String 	password; 	    //비밀번호                
	private String 	brc_name; 	    //지점명                 
	private String 	brc_phone;	    //지점전화번호              
	private String 	brc_addr1; 	    //지점주소1               
	private String 	brc_addr2; 	    //지점주소2               
	private String 	brc_post; 	    //우편번호                
	private String 	brc_boss; 	    //대표이름                
	private String 	boss_phone; 	//대표연락처               
	private int 	brc_lev;        //레벨(대리점:1, 판매점:2)    
	private int 	brc_state;      //상태(기본0,삭제1)
	private String	ip;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getBrc_id() {
		return brc_id;
	}
	public void setBrc_id(String brc_id) {
		this.brc_id = brc_id;
	}
	public String getAttach_id() {
		return attach_id;
	}
	public void setAttach_id(String attach_id) {
		this.attach_id = attach_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getBrc_name() {
		return brc_name;
	}
	public void setBrc_name(String brc_name) {
		this.brc_name = brc_name;
	}
	public String getBrc_phone() {
		return brc_phone;
	}
	public void setBrc_phone(String brc_phone) {
		this.brc_phone = brc_phone;
	}
	public String getBrc_addr1() {
		return brc_addr1;
	}
	public void setBrc_addr1(String brc_addr1) {
		this.brc_addr1 = brc_addr1;
	}
	public String getBrc_addr2() {
		return brc_addr2;
	}
	public void setBrc_addr2(String brc_addr2) {
		this.brc_addr2 = brc_addr2;
	}
	public String getBrc_post() {
		return brc_post;
	}
	public void setBrc_post(String brc_post) {
		this.brc_post = brc_post;
	}
	public String getBrc_boss() {
		return brc_boss;
	}
	public void setBrc_boss(String brc_boss) {
		this.brc_boss = brc_boss;
	}
	public String getBoss_phone() {
		return boss_phone;
	}
	public void setBoss_phone(String boss_phone) {
		this.boss_phone = boss_phone;
	}
	public int getBrc_lev() {
		return brc_lev;
	}
	public void setBrc_lev(int brc_lev) {
		this.brc_lev = brc_lev;
	}
	public int getBrc_state() {
		return brc_state;
	}
	public void setBrc_state(int brc_state) {
		this.brc_state = brc_state;
	}	
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	@Override
	public String toString() {
		return "LoginDto [seq=" + seq + ", brc_id=" + brc_id + ", attach_id="
				+ attach_id + ", password=" + password + ", brc_name="
				+ brc_name + ", brc_phone=" + brc_phone + ", brc_addr1="
				+ brc_addr1 + ", brc_addr2=" + brc_addr2 + ", brc_post="
				+ brc_post + ", brc_boss=" + brc_boss + ", boss_phone="
				+ boss_phone + ", brc_lev=" + brc_lev + ", brc_state="
				+ brc_state + ", ip=" + ip + "]";
	}
	

	
	

	               
	                 
	                                               
	
}
