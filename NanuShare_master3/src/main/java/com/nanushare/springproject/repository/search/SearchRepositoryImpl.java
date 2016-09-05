package com.nanushare.springproject.repository.search;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.nanushare.springproject.domain.nanum.NanumVO;

@Repository
public class SearchRepositoryImpl implements SearchRepository {

	@Inject
	private SqlSession session;
	
	// 해당 mapper의 namespace값
	private static final String namespace = "com.nanushare.springproject.repository.nanum.NanumRepository";
	
	@Override
	public List<NanumVO> listSearch(String keyword) throws Exception {
		return session.selectList(namespace + ".listSearch", keyword);
	}

}
