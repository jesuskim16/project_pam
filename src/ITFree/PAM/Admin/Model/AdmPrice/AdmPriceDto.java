package ITFree.PAM.Admin.Model.AdmPrice;

public class AdmPriceDto {
	private long seq;
	private String price_name;
	private String price;
	private String use_call;
	private String use_sms; 
	private String use_data;
	private String memo;
	private String write_date;
	private String write_ip;
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
	@Override
	public String toString() {
		return "AdmPriceDto [seq=" + seq + ", price_name=" + price_name
				+ ", price=" + price + ", use_call=" + use_call + ", use_sms="
				+ use_sms + ", use_data=" + use_data + ", memo=" + memo
				+ ", write_date=" + write_date + ", write_ip=" + write_ip + "]";
	}
	
	

}
