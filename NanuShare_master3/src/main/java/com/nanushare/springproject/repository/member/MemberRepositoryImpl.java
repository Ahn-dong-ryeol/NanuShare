package com.nanushare.springproject.repository.member;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.nanushare.springproject.domain.member.MemberVO;

@Repository
public class MemberRepositoryImpl implements MemberRepository{
	
	@Inject
	private SqlSession sqlSession;
	
	// 해당 mapper의 namespace값
	private static final String namespace = "com.nanushare.springproject.repository.member.MemberRepository";
	
	@Override
	public String getTime(){
		return sqlSession.selectOne(namespace+".getTime");
	}
	
	@Override
	public void memberInsert(MemberVO memberVO) {
		sqlSession.insert(namespace+".memberInsert",memberVO);
	}

	@Override
	public MemberVO login(String memId, String memPw) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("memId", memId);
		paramMap.put("memPw", memPw);
		
		return sqlSession.selectOne(namespace+".login",paramMap);
	}

}
