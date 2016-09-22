package com.nanushare.springproject.service.search;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.nanushare.springproject.domain.nanum.NanumVO;
import com.nanushare.springproject.repository.search.SearchRepository;

@Service
public class SearchServiceImpl implements SearchService {

	@Inject
	private SearchRepository searchRepository;
	
	@Override
	public List<NanumVO> listSearch(String keyword) throws Exception{
		return searchRepository.listSearch(keyword);
	}

	@Override
	public List<NanumVO> cateListSearch(int prodCateId) throws Exception{
		return searchRepository.cateListSearch(prodCateId);
	}

	@Override
	public List<NanumVO> subListSearch(Integer prodCateId, String keyword) throws Exception {
		return subListSearch(prodCateId, keyword);
	}

}
