package com.nanushare.springproject.repository.nanum;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.nanushare.springproject.domain.nanum.NanumVO;

@Repository
public class NanumRepositoryImpl implements NanumRepository{
	
	@Inject
	private SqlSession sqlSession;
	
	// 해당 mapper의 namespace값
	private static final String namespace = "com.nanushare.springproject.repository.nanum.NanumRepository";
	
	@Override
	public int nanumInsert(NanumVO nanumVO) {
		sqlSession.insert(namespace+".nanumInsert",nanumVO);
		return 0;
	}

	@Override
	public void addAttach(String fullName, int nanumId) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("fullName", fullName);
		paramMap.put("nanumId", nanumId);
		sqlSession.insert(namespace+".addAttach", paramMap);
	}
	
	@Override
	public void updateLikeCnt(Integer nanumId, int amount) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("nanumId", nanumId);
		paramMap.put("amount", amount);
		
		sqlSession.update(namespace+".updateLikeCnt",paramMap);
	}

}
