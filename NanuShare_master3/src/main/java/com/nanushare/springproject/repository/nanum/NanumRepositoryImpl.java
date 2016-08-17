package com.nanushare.springproject.repository.nanum;

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

}
