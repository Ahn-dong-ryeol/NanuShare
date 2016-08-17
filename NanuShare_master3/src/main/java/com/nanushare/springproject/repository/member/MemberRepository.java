package com.nanushare.springproject.repository.member;

import com.nanushare.springproject.domain.member.MemberVO;

public interface MemberRepository {
	public String getTime();
	void memberInsert(MemberVO memberVO);
	public MemberVO login(String memId, String memPw) throws Exception;
}
