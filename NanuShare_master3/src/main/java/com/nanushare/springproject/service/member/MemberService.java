package com.nanushare.springproject.service.member;

import com.nanushare.springproject.domain.member.MemberVO;

public interface MemberService {
	//회원가입
		void memberJoin(MemberVO memberVO);
		MemberVO login(String memId, String memPw) throws Exception;
}
