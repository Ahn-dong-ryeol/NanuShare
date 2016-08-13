package com.nanushare.springproject.repository.member;

import com.nanushare.springproject.domain.member.MemberVO;

public interface MemberRepository {
	//회원가입 처리
	void memberInsert(MemberVO memberVO);
}
