package com.nanushare.springproject.repository.member.Impl;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.nanushare.springproject.domain.member.MemberVO;
import com.nanushare.springproject.repository.member.MemberRepository;

@Repository
public class MemberRepositoryImpl implements MemberRepository {
	
	@Inject
	private SqlSession session;
	
	@Override
	public void memberInsert(MemberVO memberVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public MemberVO login(MemberVO memberDTO) throws Exception {
		return session.selectOne("classpath:nanushare/sqlmap/mapper/MemberMapper.login",memberDTO);
	}
	

}
