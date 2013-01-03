package ITFree.PAM.Seller.Model.Client;

public class ClientInfoDto {
	private String seq; 		
	private String cust_name; 	
	private String cust_phone;
	private String cust_phone1;
	private String cust_phone2;
	private String cust_phone3;
	private String cust_birth;	
	private String cont_term;	
	private String open_date;	
	private String memo;
	private String brc_id; 		
	private String price_name; 	
	private String model_code;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
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
		return "ClientInfoDto [seq=" + seq + ", cust_name=" + cust_name
				+ ", cust_phone=" + cust_phone + ", cust_phone1=" + cust_phone1
				+ ", cust_phone2=" + cust_phone2 + ", cust_phone3="
				+ cust_phone3 + ", cust_birth=" + cust_birth + ", cont_term="
				+ cont_term + ", open_date=" + open_date + ", memo=" + memo
				+ ", brc_id=" + brc_id + ", price_name=" + price_name
				+ ", model_code=" + model_code + "]";
	} 	
	
	
}
