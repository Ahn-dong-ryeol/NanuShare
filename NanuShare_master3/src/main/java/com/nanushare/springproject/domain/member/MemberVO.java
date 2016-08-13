package com.nanushare.springproject.domain.member;

import java.util.Date;

public class MemberVO {
	protected String memId;
	protected String memGrade;
	protected String nickname;
	protected String memGender;
	protected String memBrithdate;
	protected String birthYear;//생년
	protected String birthMonth;//월
	protected String birthDay;//일
	protected String memPw;
	protected String memMobileNumber;
	protected String memKakaoId;
	protected String memPostcode1;
	protected String memAddress1;
	protected String memAddress_detail1;//상세주소
	protected String memPostcode2;
	protected String memAddress2;
	protected String memAddress_detail2;//상세주소
	protected Date memJoinDate;
	protected int memWarningNum;
	protected int memBannedNum;
	protected int memCreditRate;
	
	public MemberVO () {}
	
	public MemberVO(String memId, String memGrade, String nickname, String memGender, String memBrithdate, String memPw,
			String memMobileNumber, String memKakaoId, String memPostcode1, String memAddress1, String memPostcode2,
			String memAddress2, Date memJoinDate, int memWarningNum, int memBannedNum, int memCreditRate) {
		super();
		this.memId = memId;
		this.memGrade = memGrade;
		this.nickname = nickname;
		this.memGender = memGender;
		this.memBrithdate = memBrithdate;
		this.memPw = memPw;
		this.memMobileNumber = memMobileNumber;
		this.memKakaoId = memKakaoId;
		this.memPostcode1 = memPostcode1;
		this.memAddress1 = memAddress1;
		this.memPostcode2 = memPostcode2;
		this.memAddress2 = memAddress2;
		this.memJoinDate = memJoinDate;
		this.memWarningNum = memWarningNum;
		this.memBannedNum = memBannedNum;
		this.memCreditRate = memCreditRate;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemGrade() {
		return memGrade;
	}

	public void setMemGrade(String memGrade) {
		this.memGrade = memGrade;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getMemGender() {
		return memGender;
	}

	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}

	public String getMemBrithdate() {
		return memBrithdate;
	}

	public void setMemBrithdate(String memBrithdate) {
		this.memBrithdate = memBrithdate;
	}

	public String getMemPw() {
		return memPw;
	}

	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}

	public String getMemMobileNumber() {
		return memMobileNumber;
	}

	public void setMemMobileNumber(String memMobileNumber) {
		this.memMobileNumber = memMobileNumber;
	}

	public String getMemKakaoId() {
		return memKakaoId;
	}

	public void setMemKakaoId(String memKakaoId) {
		this.memKakaoId = memKakaoId;
	}

	public String getMemPostcode1() {
		return memPostcode1;
	}

	public void setMemPostcode1(String memPostcode1) {
		this.memPostcode1 = memPostcode1;
	}

	public String getMemAddress1() {
		return memAddress1;
	}

	public void setMemAddress1(String memAddress1) {
		this.memAddress1 = memAddress1;
	}

	public String getMemPostcode2() {
		return memPostcode2;
	}

	public void setMemPostcode2(String memPostcode2) {
		this.memPostcode2 = memPostcode2;
	}

	public String getMemAddress2() {
		return memAddress2;
	}

	public void setMemAddress2(String memAddress2) {
		this.memAddress2 = memAddress2;
	}

	public Date getMemJoinDate() {
		return memJoinDate;
	}

	public void setMemJoinDate(Date memJoinDate) {
		this.memJoinDate = memJoinDate;
	}

	public int getMemWarningNum() {
		return memWarningNum;
	}

	public void setMemWarningNum(int memWarningNum) {
		this.memWarningNum = memWarningNum;
	}

	public int getMemBannedNum() {
		return memBannedNum;
	}

	public void setMemBannedNum(int memBannedNum) {
		this.memBannedNum = memBannedNum;
	}

	public int getMemCreditRate() {
		return memCreditRate;
	}

	public void setMemCreditRate(int memCreditRate) {
		this.memCreditRate = memCreditRate;
	}

	public String getBirthYear() {
		return birthYear;
	}

	public void setBirthYear(String birthYear) {
		this.birthYear = birthYear;
	}

	public String getBirthMonth() {
		return birthMonth;
	}

	public void setBirthMonth(String birthMonth) {
		this.birthMonth = birthMonth;
	}

	public String getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}

	public String getMemAddress_detail1() {
		return memAddress_detail1;
	}

	public void setMemAddress_detail1(String memAddress_detail1) {
		this.memAddress_detail1 = memAddress_detail1;
	}

	public String getMemAddress_detail2() {
		return memAddress_detail2;
	}

	public void setMemAddress_detail2(String memAddress_detail2) {
		this.memAddress_detail2 = memAddress_detail2;
	}
	
	
	
	
}
