package ITFree.PAM.Admin.Model.AdmClient;

public class AdmClientDto {
	private long rnum;
	private long seq;          //번호      
	private String cust_name;  //고객 이름  
	private String cust_phone; //고객 번호   /
	private String cust_phone1;
	private String cust_phone2;
	private String cust_phone3;
	
	private int cont_term;	   //약정 기간  / 
	private String open_date;  //개통일 /     
	private String memo      ; //메모      
	private String write_date; //작성일    /
	private String write_ip;   //작성 IP   /
	private String brc_id;     //판매점 ID   /
	private String price_name; //요금제명  /
	
	private String model_code; //모델 코드  / 
	private int rebate;       //수익금     /
	private String cust_birth; //주민번호 /
	
	private String model_name;
	
	
	
	
	
	public long getRnum() {
		return rnum;
	}
	public void setRnum(long rnum) {
		this.rnum = rnum;
	}
	public long getSeq() {
		return seq;
	}
	public void setSeq(long seq) {
		this.seq = seq;
	}
	public String getCust_name() {
		return cust_name;
	}
	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}
	public String getCust_phone() {
		return cust_phone;
	}
	public void setCust_phone(String cust_phone) {
		this.cust_phone = cust_phone;
	}
	public int getCont_term() {
		return cont_term;
	}
	public void setCont_term(int cont_term) {
		this.cont_term = cont_term;
	}
	public String getOpen_date() {
		return open_date;
	}
	public void setOpen_date(String open_date) {
		this.open_date = open_date;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
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
	public String getPrice_name() {
		return price_name;
	}
	public void setPrice_name(String price_name) {
		this.price_name = price_name;
	}
	public String getModel_code() {
		return model_code;
	}
	public void setModel_code(String model_code) {
		this.model_code = model_code;
	}
	
	
	
	public int getRebate() {
		return rebate;
	}
	public void setRebate(int rebate) {
		this.rebate = rebate;
	}
	public String getCust_birth() {
		return cust_birth;
	}
	public void setCust_birth(String cust_birth) {
		this.cust_birth = cust_birth;
	}

	public String getModel_name() {
		return model_name;
	}
	public void setModel_name(String model_name) {
		this.model_name = model_name;
	}
	public String getCust_phone1() {
		return cust_phone1;
	}
	public void setCust_phone1(String cust_phone1) {
		this.cust_phone1 = cust_phone1;
	}
	public String getCust_phone2() {
		return cust_phone2;
	}
	public void setCust_phone2(String cust_phone2) {
		this.cust_phone2 = cust_phone2;
	}
	public String getCust_phone3() {
		return cust_phone3;
	}
	public void setCust_phone3(String cust_phone3) {
		this.cust_phone3 = cust_phone3;
	}
	@Override
	public String toString() {
		return "AdmClientDto [rnum=" + rnum + ", seq=" + seq + ", cust_name="
				+ cust_name + ", cust_phone=" + cust_phone + ", cust_phone1="
				+ cust_phone1 + ", cust_phone2=" + cust_phone2
				+ ", cust_phone3=" + cust_phone3 + ", cont_term=" + cont_term
				+ ", open_date=" + open_date + ", memo=" + memo
				+ ", write_date=" + write_date + ", write_ip=" + write_ip
				+ ", brc_id=" + brc_id + ", price_name=" + price_name
				+ ", model_code=" + model_code + ", rebate=" + rebate
				+ ", cust_birth=" + cust_birth + ", model_name=" + model_name
				+ "]";
	}
	
	
	
	

	
	
	
	
}
