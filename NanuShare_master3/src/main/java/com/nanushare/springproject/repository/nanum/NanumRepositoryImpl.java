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
	public void insertNanum(NanumVO nanumVO) {
		sqlSession.insert(namespace+".nanumInsert",nanumVO);
	}

	@Override
	public void addNanumImgAttach(Map<String, Object> map) throws Exception{
		sqlSession.insert(namespace+".addNanumImgAttach", map);
	}
	
	@Override
	public void updateLikeCnt(Integer nanumId, int amount) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("nanumId", nanumId);
		paramMap.put("amount", amount);
		
		sqlSession.update(namespace+".updateLikeCnt",paramMap);
	}

}
