package ITFree.PAM.Agent.Model.SalesRcd;

public class SalesRcdDto {
	private int rown;
	private int seq; 		
	private String cust_name; 	
	private String cust_phone;
	private String cust_phone1;
	private String cust_phone2;
	private String cust_phone3;
	private String cust_birth;	
	private String cont_term;	
	private String open_date;	
	private String memo;
	private String write_date;
	private String write_ip;
	private String brc_id; 		
	private String price_name; 	
	private String model_code;
	private String s_sdate;
	private String s_edate;
	private String model_name;      
	private String brc_name;      //지점명
	private long rebate;
	
	public int getRown() {
		return rown;
	}
	public void setRown(int rown) {
		this.rown = rown;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
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
	public String getCust_birth() {
		return cust_birth;
	}
	public void setCust_birth(String cust_birth) {
		this.cust_birth = cust_birth;
	}
	public String getCont_term() {
		return cont_term;
	}
	public void setCont_term(String cont_term) {
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
	public String getS_sdate() {
		return s_sdate;
	}
	public void setS_sdate(String s_sdate) {
		this.s_sdate = s_sdate;
	}
	public String getS_edate() {
		return s_edate;
	}
	public void setS_edate(String s_edate) {
		this.s_edate = s_edate;
	}
	public String getModel_name() {
		return model_name;
	}
	public void setModel_name(String model_name) {
		this.model_name = model_name;
	}
	public String getBrc_name() {
		return brc_name;
	}
	public void setBrc_name(String brc_name) {
		this.brc_name = brc_name;
	}
	
	public long getRebate() {
		return rebate;
	}
	public void setRebate(long rebate) {
		this.rebate = rebate;
	}
	
	@Override
	public String toString() {
		return "SalesRcdDto [rown=" + rown + ", seq=" + seq + ", cust_name="
				+ cust_name + ", cust_phone=" + cust_phone + ", cust_phone1="
				+ cust_phone1 + ", cust_phone2=" + cust_phone2
				+ ", cust_phone3=" + cust_phone3 + ", cust_birth=" + cust_birth
				+ ", cont_term=" + cont_term + ", open_date=" + open_date
				+ ", memo=" + memo + ", write_date=" + write_date
				+ ", write_ip=" + write_ip + ", brc_id=" + brc_id
				+ ", price_name=" + price_name + ", model_code=" + model_code
				+ ", s_sdate=" + s_sdate + ", s_edate=" + s_edate
				+ ", model_name=" + model_name + ", brc_name=" + brc_name
				+ ", rebate=" + rebate + "]";
	}
	
	
	
	
}
