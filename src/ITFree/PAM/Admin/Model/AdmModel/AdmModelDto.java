package ITFree.PAM.Admin.Model.AdmModel;

import org.springframework.web.multipart.MultipartFile;

public class AdmModelDto {
	private long rown;
	private long seq;
	private String model_code;
	private String model_name;
	private String filename;
	private String open_date;
	private String write_date;
	private String write_ip;
	private String make_comp;
	private int state_chk;
	private MultipartFile file;
	
	public long getSeq() {
		return seq;
	}
	public void setSeq(long seq) {
		this.seq = seq;
	}
	public String getModel_code() {
		return model_code;
	}
	public void setModel_code(String model_code) {
		this.model_code = model_code;
	}
	public String getModel_name() {
		return model_name;
	}
	public void setModel_name(String model_name) {
		this.model_name = model_name;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getOpen_date() {
		return open_date;
	}
	public void setOpen_date(String open_date) {
		this.open_date = open_date;
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
	public String getMake_comp() {
		return make_comp;
	}
	public void setMake_comp(String make_comp) {
		this.make_comp = make_comp;
	}
	public int getState_chk() {
		return state_chk;
	}
	public void setState_chk(int state_chk) {
		this.state_chk = state_chk;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public long getRown() {
		return rown;
	}
	public void setRown(long rown) {
		this.rown = rown;
	}
	@Override
	public String toString() {
		return "AdmModelDto [rown=" + rown + ", seq=" + seq + ", model_code="
				+ model_code + ", model_name=" + model_name + ", filename="
				+ filename + ", open_date=" + open_date + ", write_date="
				+ write_date + ", write_ip=" + write_ip + ", make_comp="
				+ make_comp + ", state_chk=" + state_chk + ", file=" + file
				+ "]";
	}
}
