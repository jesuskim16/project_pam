package ITFree.PAM.Admin.Model.AdmPrice;

public class AdmPriceDto {
	private long rnum;
	private long seq;	//번호
	
	private String price_name;	//요금제
	private String update_price_name;
	
	private String price;		//기본료
	private String use_call;	//음성 통화
	private String use_sms; 	//문자
	private String use_data;	//데이터
	private String memo;		//메모
	private String write_date;	//작성일
	private String write_ip;	//작성 IP
	private String state_chk;	//상태
	
	public long getSeq() {
		return seq;
	}
	public void setSeq(long seq) {
		this.seq = seq;
	}
	public String getPrice_name() {
		return price_name;
	}
	public void setPrice_name(String price_name) {
		this.price_name = price_name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getUse_call() {
		return use_call;
	}
	public void setUse_call(String use_call) {
		this.use_call = use_call;
	}
	public String getUse_sms() {
		return use_sms;
	}
	public void setUse_sms(String use_sms) {
		this.use_sms = use_sms;
	}
	public String getUse_data() {
		return use_data;
	}
	public void setUse_data(String use_data) {
		this.use_data = use_data;
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
	
	public String getState_chk() {
		return state_chk;
	}
	public void setState_chk(String state_chk) {
		this.state_chk = state_chk;
	}
	
	public long getRnum() {
		return rnum;
	}
	public void setRnum(long rnum) {
		this.rnum = rnum;
	}
	
	public String getUpdate_price_name() {
		return update_price_name;
	}
	public void setUpdate_price_name(String update_price_name) {
		this.update_price_name = update_price_name;
	}
	@Override
	public String toString() {
		return "AdmPriceDto [rnum=" + rnum + ", seq=" + seq + ", price_name="
				+ price_name + ", update_price_name=" + update_price_name
				+ ", price=" + price + ", use_call=" + use_call + ", use_sms="
				+ use_sms + ", use_data=" + use_data + ", memo=" + memo
				+ ", write_date=" + write_date + ", write_ip=" + write_ip
				+ ", state_chk=" + state_chk + "]";
	}
	
	

	
	

}
