package com.nanushare.springproject.service.nanum;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nanushare.springproject.domain.nanum.NanumVO;
import com.nanushare.springproject.repository.nanum.NanumRepository;

@Service
public class NanumServiceImpl implements NanumService {
	
	@Inject
	private NanumRepository nanumRepository;
	
	//나눔글 작성 처리 
	@Transactional
	@Override
	public void nanumRegister(NanumVO nanumVO, Map<String, Object> map) throws Exception {
		 nanumRepository.insertNanum(nanumVO);
		 nanumRepository.addNanumImgAttach(map);
	}

	// 좋아요
	@Override
	public void updateLikeCnt(Integer nanumId, int amount) throws Exception {
		nanumRepository.updateLikeCnt(nanumId, amount);
	}



	

	
}
