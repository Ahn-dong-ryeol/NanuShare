package com.nanushare.springproject.repository.search;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	@Override
	public List<NanumVO> cateListSearch(int ProdCateId) throws Exception {
		return session.selectList(namespace+".cateListSearch", ProdCateId);
	}

	@Override
	public List<NanumVO> subListSearch(Integer prodCateId, String keyword) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("prodCateId", prodCateId);
		paramMap.put("keyword", keyword);
		return session.selectList(namespace+".subcateListSearch",paramMap);
	}

}
