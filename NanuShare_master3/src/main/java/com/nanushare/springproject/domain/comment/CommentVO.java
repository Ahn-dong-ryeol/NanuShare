package com.nanushare.springproject.domain.comment;

import java.util.Date;

public class CommentVO {
	private int nanuCmId;
	private String nanuCmContent;
	private Date nanuFirstWriteDate;
	private Date nanuLastModifyDate;
	private String nanumId;
	private int memId;
	
	public int getNanuCmId() {
		return nanuCmId;
	}
	public void setNanuCmId(int nanuCmId) {
		this.nanuCmId = nanuCmId;
	}
	public String getNanuCmContent() {
		return nanuCmContent;
	}
	public void setNanuCmContent(String nanuCmContent) {
		this.nanuCmContent = nanuCmContent;
	}
	public Date getNanuFirstWriteDate() {
		return nanuFirstWriteDate;
	}
	public void setNanuFirstWriteDate(Date nanuFirstWriteDate) {
		this.nanuFirstWriteDate = nanuFirstWriteDate;
	}
	public Date getNanuLastModifyDate() {
		return nanuLastModifyDate;
	}
	public void setNanuLastModifyDate(Date nanuLastModifyDate) {
		this.nanuLastModifyDate = nanuLastModifyDate;
	}
	public String getNanumId() {
		return nanumId;
	}
	public void setNanumId(String nanumId) {
		this.nanumId = nanumId;
	}
	public int getMemId() {
		return memId;
	}
	public void setMemId(int memId) {
		this.memId = memId;
	}
	@Override
	public String toString() {
		return "CommentVO [nanuCmId=" + nanuCmId + ", nanuCmContent=" + nanuCmContent + ", nanuFirstWriteDate="
				+ nanuFirstWriteDate + ", nanuLastModifyDate=" + nanuLastModifyDate + ", nanumId=" + nanumId
				+ ", memId=" + memId + "]";
	}
	
	
}
