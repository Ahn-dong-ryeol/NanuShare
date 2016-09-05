package com.nanushare.springproject.service.search;

import java.util.List;

import com.nanushare.springproject.domain.nanum.NanumVO;

public interface SearchService {
	
	public List<NanumVO> listSearch(String keyword) throws Exception;
}
