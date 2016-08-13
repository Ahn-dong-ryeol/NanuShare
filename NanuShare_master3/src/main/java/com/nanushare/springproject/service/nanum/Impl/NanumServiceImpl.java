package com.nanushare.springproject.service.nanum.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nanushare.springproject.domain.nanum.NanumVO;
import com.nanushare.springproject.repository.nanum.NanumRepository;
import com.nanushare.springproject.service.nanum.NanumService;

@Service
public class NanumServiceImpl implements NanumService {
	
	@Autowired
	NanumRepository nanumRepository;
	
	//나눔글 작성 처리
	public void nanumInsert(NanumVO nanumVO) {
		nanumRepository.nanumInsert(nanumVO);
	}

	

	
}
