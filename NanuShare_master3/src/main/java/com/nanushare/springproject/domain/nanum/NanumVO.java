package com.nanushare.springproject.domain.nanum;

import java.util.Date;

public class NanumVO {
	
	private int nanumId;
	private String nanumDelibery;
	private String nanumTitle;
	private String nanumContent;
	private Date nanumDate;
	private int nanumChoiceNum;
	private String nanumEndDate;
	private String nanumState;
	private String nanumDeleteCheck;//Y,N
	private int nanumHits;
	private int nanumCategoryId;
	private String nanumWriter;
	private String nanumMethod;
	private String nanumStroyTitle;
	private int nanumLikeCnt;
	
	private String[] files;
	
	public NanumVO(){}

	public NanumVO(int nanumId, String nanumDelibery, String nanumTitle, String nanumContent, Date nanumDate,
			int nanumChoiceNum, String nanumEndDate, String nanumState, String nanumDeleteCheck, int nanumHits,
			int nanumCategoryId, String nanumWriter, String nanumMethod, String nanumStroyTitle, String[] files, int nanumLikeCnt) {
		super();
		this.nanumId = nanumId;
		this.nanumDelibery = nanumDelibery;
		this.nanumTitle = nanumTitle;
		this.nanumContent = nanumContent;
		this.nanumDate = nanumDate;
		this.nanumChoiceNum = nanumChoiceNum;
		this.nanumEndDate = nanumEndDate;
		this.nanumState = nanumState;
		this.nanumDeleteCheck = nanumDeleteCheck;
		this.nanumHits = nanumHits;
		this.nanumCategoryId = nanumCategoryId;
		this.nanumWriter = nanumWriter;
		this.nanumMethod = nanumMethod;
		this.nanumStroyTitle = nanumStroyTitle;
		this.files = files;
		this.nanumLikeCnt = nanumLikeCnt;
	}

	public int getNanumId() {
		return nanumId;
	}

	public void setNanumId(int nanumId) {
		this.nanumId = nanumId;
	}

	public String getNanumDelibery() {
		return nanumDelibery;
	}

	public void setNanumDelibery(String nanumDelibery) {
		this.nanumDelibery = nanumDelibery;
	}

	public String getNanumTitle() {
		return nanumTitle;
	}

	public void setNanumTitle(String nanumTitle) {
		this.nanumTitle = nanumTitle;
	}

	public String getNanumContent() {
		return nanumContent;
	}

	public void setNanumContent(String nanumContent) {
		this.nanumContent = nanumContent;
	}

	public Date getNanumDate() {
		return nanumDate;
	}

	public void setNanumDate(Date nanumDate) {
		this.nanumDate = nanumDate;
	}

	public int getNanumChoiceNum() {
		return nanumChoiceNum;
	}

	public void setNanumChoiceNum(int nanumChoiceNum) {
		this.nanumChoiceNum = nanumChoiceNum;
	}

	public String getNanumEndDate() {
		return nanumEndDate;
	}

	public void setNanumEndDate(String nanumEndDate) {
		this.nanumEndDate = nanumEndDate;
	}

	public String getNanumState() {
		return nanumState;
	}

	public void setNanumState(String nanumState) {
		this.nanumState = nanumState;
	}

	public String getNanumDeleteCheck() {
		return nanumDeleteCheck;
	}

	public void setNanumDeleteCheck(String nanumDeleteCheck) {
		this.nanumDeleteCheck = nanumDeleteCheck;
	}

	public int getNanumHits() {
		return nanumHits;
	}

	public void setNanumHits(int nanumHits) {
		this.nanumHits = nanumHits;
	}

	public int getNanumCategoryId() {
		return nanumCategoryId;
	}

	public void setNanumCategoryId(int nanumCategoryId) {
		this.nanumCategoryId = nanumCategoryId;
	}

	public String getNanumWriter() {
		return nanumWriter;
	}

	public void setNanumWriter(String nanumWriter) {
		this.nanumWriter = nanumWriter;
	}

	public String getNanumMethod() {
		return nanumMethod;
	}

	public void setNanumMethod(String nanumMethod) {
		this.nanumMethod = nanumMethod;
	}

	public String getNanumStroyTitle() {
		return nanumStroyTitle;
	}

	public void setNanumStroyTitle(String nanumStroyTitle) {
		this.nanumStroyTitle = nanumStroyTitle;
	}

	public String[] getFiles() {
		return files;
	}

	public void setFiles(String[] files) {
		this.files = files;
	}

	public int getNanumLikeCnt() {
		return nanumLikeCnt;
	}

	public void setNanumLikeCnt(int nanumLikeCnt) {
		this.nanumLikeCnt = nanumLikeCnt;
	}

	@Override
	public String toString() {
		return "NanumVO [nanumId=" + nanumId + ", nanumDelibery=" + nanumDelibery + ", nanumTitle=" + nanumTitle
				+ ", nanumContent=" + nanumContent + ", nanumDate=" + nanumDate + ", nanumChoiceNum=" + nanumChoiceNum
				+ ", nanumEndDate=" + nanumEndDate + ", nanumState=" + nanumState + ", nanumDeleteCheck="
				+ nanumDeleteCheck + ", nanumHits=" + nanumHits + ", nanumCategoryId=" + nanumCategoryId
				+ ", nanumWriter=" + nanumWriter + ", nanumMethod=" + nanumMethod + ", nanumStroyTitle="
				+ nanumStroyTitle + ", files=" + files + ", nanumLikeCnt=" + nanumLikeCnt + "]";
	}

}
