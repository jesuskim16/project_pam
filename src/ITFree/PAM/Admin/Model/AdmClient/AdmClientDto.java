package ITFree.PAM.Admin.Model.AdmClient;

public class AdmClientDto {
	private long rnum;
	private long seq;          //번호      
	private String cust_name;  //고객 이름   
	private String cust_phone; //고객 번호   
	private int cont_term;	   //약정 기간   
	private String open_date;  //개통일     
	private String memo      ; //메모      
	private String write_date; //작성일     
	private String write_ip;   //작성 IP   
	private String brc_id;     //판매점 ID   
	private String price_name; //요금제     
	private String model_code; //모델 코드   
	private long rebate;       //요금제     
	private String cust_birth; //주민번호
	
	protected long getRnum() {
		return rnum;
	}
	protected void setRnum(long rnum) {
		this.rnum = rnum;
	}
	protected long getSeq() {
		return seq;
	}
	protected void setSeq(long seq) {
		this.seq = seq;
	}
	protected String getCust_name() {
		return cust_name;
	}
	protected void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}
	protected String getCust_phone() {
		return cust_phone;
	}
	protected void setCust_phone(String cust_phone) {
		this.cust_phone = cust_phone;
	}
	protected int getCont_term() {
		return cont_term;
	}
	protected void setCont_term(int cont_term) {
		this.cont_term = cont_term;
	}
	protected String getOpen_date() {
		return open_date;
	}
	protected void setOpen_date(String open_date) {
		this.open_date = open_date;
	}
	protected String getMemo() {
		return memo;
	}
	protected void setMemo(String memo) {
		this.memo = memo;
	}
	protected String getWrite_date() {
		return write_date;
	}
	protected void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	protected String getWrite_ip() {
		return write_ip;
	}
	protected void setWrite_ip(String write_ip) {
		this.write_ip = write_ip;
	}
	protected String getBrc_id() {
		return brc_id;
	}
	protected void setBrc_id(String brc_id) {
		this.brc_id = brc_id;
	}
	protected String getPrice_name() {
		return price_name;
	}
	protected void setPrice_name(String price_name) {
		this.price_name = price_name;
	}
	protected String getModel_code() {
		return model_code;
	}
	protected void setModel_code(String model_code) {
		this.model_code = model_code;
	}
	protected long getRebate() {
		return rebate;
	}
	protected void setRebate(long rebate) {
		this.rebate = rebate;
	}
	protected String getCust_birth() {
		return cust_birth;
	}
	protected void setCust_birth(String cust_birth) {
		this.cust_birth = cust_birth;
	}
	@Override
	public String toString() {
		return "AdmClientDto [rnum=" + rnum + ", seq=" + seq + ", cust_name="
				+ cust_name + ", cust_phone=" + cust_phone + ", cont_term="
				+ cont_term + ", open_date=" + open_date + ", memo=" + memo
				+ ", write_date=" + write_date + ", write_ip=" + write_ip
				+ ", brc_id=" + brc_id + ", price_name=" + price_name
				+ ", model_code=" + model_code + ", rebate=" + rebate
				+ ", cust_birth=" + cust_birth + "]";
	}
	
	

	
	
	
	
}
