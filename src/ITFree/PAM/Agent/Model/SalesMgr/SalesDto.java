package ITFree.PAM.Agent.Model.SalesMgr;

public class SalesDto {
	//BRANCH
	private long rnum;
	private long seq;             //seq	             
	private String brc_id;        //지점ID(PK)           
	private String attach_id;     //관리점ID              
	private String password;      //비밀번호               
	private String brc_name;      //지점명                
	private String brc_phone;     //지점전화번호
	private String brc_phone1;
	private String brc_phone2;
	private String brc_phone3;
	private String brc_addr1;     //지점주소1              
	private String brc_addr2;     //지점주소2
	private String brc_post1;
	private String brc_post2;
	private String brc_post;      //우편번호 
	private String brc_boss;      //대표이름               
	private String boss_phone;    //대표연락처
	private String boss_phone1;
	private String boss_phone2;
	private String boss_phone3;
	private int brc_lev;          //레벨(대리점:1, 판매점:2)   
	private int brc_state;     //상태(기본0,삭제1)        
	private String write_id;      //생성자ID              
	private String write_date;    //생성일                
	private String write_ip;      //생성자IP 
	
	//CUSTOMINFO
	private String salesnumber;
	private String salesrebate;
	
	
	
	public long getSeq() {
		return seq;
	}
	public void setSeq(long seq) {
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
	public String getBrc_phone1() {
		return brc_phone1;
	}
	public void setBrc_phone1(String brc_phone1) {
		this.brc_phone1 = brc_phone1;
	}
	public String getBrc_phone2() {
		return brc_phone2;
	}
	public void setBrc_phone2(String brc_phone2) {
		this.brc_phone2 = brc_phone2;
	}
	public String getBrc_phone3() {
		return brc_phone3;
	}
	public void setBrc_phone3(String brc_phone3) {
		this.brc_phone3 = brc_phone3;
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
	public String getBoss_phone1() {
		return boss_phone1;
	}
	public void setBoss_phone1(String boss_phone1) {
		this.boss_phone1 = boss_phone1;
	}
	public String getBoss_phone2() {
		return boss_phone2;
	}
	public void setBoss_phone2(String boss_phone2) {
		this.boss_phone2 = boss_phone2;
	}
	public String getBoss_phone3() {
		return boss_phone3;
	}
	public void setBoss_phone3(String boss_phone3) {
		this.boss_phone3 = boss_phone3;
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
	public String getWrite_id() {
		return write_id;
	}
	public void setWrite_id(String write_id) {
		this.write_id = write_id;
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
	
	public String getBrc_post1() {
		return brc_post1;
	}
	public void setBrc_post1(String brc_post1) {
		this.brc_post1 = brc_post1;
	}
	public String getBrc_post2() {
		return brc_post2;
	}
	public void setBrc_post2(String brc_post2) {
		this.brc_post2 = brc_post2;
	}

	public long getRnum() {
		return rnum;
	}
	public void setRnum(long rnum) {
		this.rnum = rnum;
	}
	public String getSalesnumber() {
		return salesnumber;
	}
	public void setSalesnumber(String salesnumber) {
		this.salesnumber = salesnumber;
	}
	public String getSalesrebate() {
		return salesrebate;
	}
	public void setSalesrebate(String salesrebate) {
		this.salesrebate = salesrebate;
	}

	@Override
	public String toString() {
		return "SalesDto [rnum=" + rnum + ", seq=" + seq + ", brc_id=" + brc_id
				+ ", attach_id=" + attach_id + ", password=" + password
				+ ", brc_name=" + brc_name + ", brc_phone=" + brc_phone
				+ ", brc_phone1=" + brc_phone1 + ", brc_phone2=" + brc_phone2
				+ ", brc_phone3=" + brc_phone3 + ", brc_addr1=" + brc_addr1
				+ ", brc_addr2=" + brc_addr2 + ", brc_post1=" + brc_post1
				+ ", brc_post2=" + brc_post2 + ", brc_post=" + brc_post
				+ ", brc_boss=" + brc_boss + ", boss_phone=" + boss_phone
				+ ", boss_phone1=" + boss_phone1 + ", boss_phone2="
				+ boss_phone2 + ", boss_phone3=" + boss_phone3 + ", brc_lev="
				+ brc_lev + ", brc_state=" + brc_state + ", write_id="
				+ write_id + ", write_date=" + write_date + ", write_ip="
				+ write_ip + ", salesnumber=" + salesnumber + ", salesrebate="
				+ salesrebate +  "]";
	}
	

	

	
	
	
	
	
	
	
	
}
