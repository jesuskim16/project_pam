package ITFree.PAM.Admin.Model.AdmClient;

public class AdmClientDto {		
	private long SEQ;          //번호      
	private String CUST_NAME;  //고객 이름   
	private String CUST_PHONE; //고객 번호   
	private int CONT_TERM;  //약정 기간   
	private String OPEN_DATE;  //개통일     
	private String MEMO      ; //메모      
	private String WRITE_DATE; //작성일     
	private String WRITE_IP;   //작성 IP   
	private String BRC_ID;     //판매점 ID   
	private String PRICE_NAME; //요금제     
	private String MODEL_CODE; //모델 코드   
	private long REBATE;       //요금제     
	private String CUST_BIRTH; //주민번호    
	
	protected long getSEQ() {
		return SEQ;
	}
	protected void setSEQ(long sEQ) {
		SEQ = sEQ;
	}
	protected String getCUST_NAME() {
		return CUST_NAME;
	}
	protected void setCUST_NAME(String cUST_NAME) {
		CUST_NAME = cUST_NAME;
	}
	protected String getCUST_PHONE() {
		return CUST_PHONE;
	}
	protected void setCUST_PHONE(String cUST_PHONE) {
		CUST_PHONE = cUST_PHONE;
	}
	protected int getCONT_TERM() {
		return CONT_TERM;
	}
	protected void setCONT_TERM(int cONT_TERM) {
		CONT_TERM = cONT_TERM;
	}
	protected String getOPEN_DATE() {
		return OPEN_DATE;
	}
	protected void setOPEN_DATE(String oPEN_DATE) {
		OPEN_DATE = oPEN_DATE;
	}
	protected String getMEMO() {
		return MEMO;
	}
	protected void setMEMO(String mEMO) {
		MEMO = mEMO;
	}
	protected String getWRITE_DATE() {
		return WRITE_DATE;
	}
	protected void setWRITE_DATE(String wRITE_DATE) {
		WRITE_DATE = wRITE_DATE;
	}
	protected String getWRITE_IP() {
		return WRITE_IP;
	}
	protected void setWRITE_IP(String wRITE_IP) {
		WRITE_IP = wRITE_IP;
	}
	protected String getBRC_ID() {
		return BRC_ID;
	}
	protected void setBRC_ID(String bRC_ID) {
		BRC_ID = bRC_ID;
	}
	protected String getPRICE_NAME() {
		return PRICE_NAME;
	}
	protected void setPRICE_NAME(String pRICE_NAME) {
		PRICE_NAME = pRICE_NAME;
	}
	protected String getMODEL_CODE() {
		return MODEL_CODE;
	}
	protected void setMODEL_CODE(String mODEL_CODE) {
		MODEL_CODE = mODEL_CODE;
	}
	protected long getREBATE() {
		return REBATE;
	}
	protected void setREBATE(long rEBATE) {
		REBATE = rEBATE;
	}
	protected String getCUST_BIRTH() {
		return CUST_BIRTH;
	}
	protected void setCUST_BIRTH(String cUST_BIRTH) {
		CUST_BIRTH = cUST_BIRTH;
	}
	@Override
	public String toString() {
		return "AdmClientDto [SEQ=" + SEQ + ", CUST_NAME=" + CUST_NAME
				+ ", CUST_PHONE=" + CUST_PHONE + ", CONT_TERM=" + CONT_TERM
				+ ", OPEN_DATE=" + OPEN_DATE + ", MEMO=" + MEMO
				+ ", WRITE_DATE=" + WRITE_DATE + ", WRITE_IP=" + WRITE_IP
				+ ", BRC_ID=" + BRC_ID + ", PRICE_NAME=" + PRICE_NAME
				+ ", MODEL_CODE=" + MODEL_CODE + ", REBATE=" + REBATE
				+ ", CUST_BIRTH=" + CUST_BIRTH + "]";
	}
	
	
}
