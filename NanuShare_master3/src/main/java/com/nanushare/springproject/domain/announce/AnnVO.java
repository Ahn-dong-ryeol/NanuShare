package com.nanushare.springproject.domain.announce;

import java.util.Date;

public class AnnVO {
	private int annId;
	private String annTitle;
	private String annContents;
	private Date annWriteDate;
	private int annHits;
	private String memId;
	
	public int getAnnId() {
		return annId;
	}
	public void setAnnId(int annId) {
		this.annId = annId;
	}
	public String getAnnTitle() {
		return annTitle;
	}
	public void setAnnTitle(String annTitle) {
		this.annTitle = annTitle;
	}
	public String getAnnContents() {
		return annContents;
	}
	public void setAnnContents(String annContents) {
		this.annContents = annContents;
	}
	public Date getAnnWriteDate() {
		return annWriteDate;
	}
	public void setAnnWriteDate(Date annWriteDate) {
		this.annWriteDate = annWriteDate;
	}
	public int getAnnHits() {
		return annHits;
	}
	public void setAnnHits(int annHits) {
		this.annHits = annHits;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	@Override
	public String toString() {
		return "AnnVO [annId=" + annId + ", annTitle=" + annTitle + ", annContents=" + annContents + ", annWriteDate="
				+ annWriteDate + ", annHits=" + annHits + ", memId=" + memId + "]";
	}
	
	
	
}
