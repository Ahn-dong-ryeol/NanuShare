package com.nanushare.springproject.domain.image;

import java.util.Date;

public class ImgVO {
	private String imgId;
	private Date imgSaveDate;
	private String imgFileExtension;
	private int imgIdentifier;
	private String imgType;
	
	public ImgVO(){}
	
	public ImgVO(String imgId, Date imgSaveDate, String imgFileExtension, int imgIdentifier, String imgType) {
		super();
		this.imgId = imgId;
		this.imgSaveDate = imgSaveDate;
		this.imgFileExtension = imgFileExtension;
		this.imgIdentifier = imgIdentifier;
		this.imgType = imgType;
	}
	
	public String getImgId() {
		return imgId;
	}
	public void setImgId(String imgId) {
		this.imgId = imgId;
	}
	public Date getImgSaveDate() {
		return imgSaveDate;
	}
	public void setImgSaveDate(Date imgSaveDate) {
		this.imgSaveDate = imgSaveDate;
	}
	public String getImgFileExtension() {
		return imgFileExtension;
	}
	public void setImgFileExtension(String imgFileExtension) {
		this.imgFileExtension = imgFileExtension;
	}
	public int getImgIdentifier() {
		return imgIdentifier;
	}
	public void setImgIdentifier(int imgIdentifier) {
		this.imgIdentifier = imgIdentifier;
	}
	public String getImgType() {
		return imgType;
	}
	public void setImgType(String imgType) {
		this.imgType = imgType;
	}
	@Override
	public String toString() {
		return "ImgVO [imgId=" + imgId + ", imgSaveDate=" + imgSaveDate + ", imgFileExtension=" + imgFileExtension
				+ ", imgIdentifier=" + imgIdentifier + ", imgType=" + imgType + "]";
	}
	
}
