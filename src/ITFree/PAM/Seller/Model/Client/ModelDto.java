package ITFree.PAM.Seller.Model.Client;

public class ModelDto {
	private long 	seq; 		
	private String 	model_code; 	
	private String 	model_name; 	
	private String 	filename; 	
	private String 	open_date;
	
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
	
	@Override
	public String toString() {
		return "ModelDto [seq=" + seq + ", model_code=" + model_code
				+ ", model_name=" + model_name + ", filename=" + filename
				+ ", open_date=" + open_date + "]";
	}
	
	
	
	
}
