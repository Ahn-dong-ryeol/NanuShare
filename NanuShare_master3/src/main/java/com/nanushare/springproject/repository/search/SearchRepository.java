package com.nanushare.springproject.repository.search;

import java.util.List;

import com.nanushare.springproject.domain.nanum.NanumVO;

public interface SearchRepository {
	
	// keyword로 나눔글 제목 검색
	public List<NanumVO> listSearch(String keyword) throws Exception;
	
	// ProdCateId에 속하는 나눔글 목록 검색
	public List<NanumVO> cateListSearch(int ProdCateId) throws Exception;
	
	// 하위 카테고리 내에서 키워드로 검색
	public List<NanumVO> subListSearch(Integer prodCateId, String keyword) throws Exception;
	
}
