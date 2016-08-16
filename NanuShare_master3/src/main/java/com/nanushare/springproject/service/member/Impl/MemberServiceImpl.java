package com.nanushare.springproject.service.member.Impl;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nanushare.springproject.domain.member.MemberVO;
import com.nanushare.springproject.repository.member.MemberRepository;
import com.nanushare.springproject.service.member.MemberService;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	private MemberRepository memberRepository;
	
	/*@Autowired
	MemberRepository memberRepository;*/
	
	public void memberJoin(MemberVO memberVO) {
		memberRepository.memberInsert(memberVO);
	}

	@Override
	public MemberVO login(MemberVO memberDTO) throws Exception {
		
		return memberRepository.login(memberDTO);
	}
	

}
