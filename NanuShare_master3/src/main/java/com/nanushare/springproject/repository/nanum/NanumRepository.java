package com.nanushare.springproject.repository.nanum;

import com.nanushare.springproject.domain.nanum.NanumVO;

public interface NanumRepository {
	//나눔 글 작성 처리 
	int nanumInsert(NanumVO nanumVO);
	//이미지 정보 저장 
	public void addAttach(String fullName, int nanumId) throws Exception;
	
	// 좋아요 수 증가
	public void updateLikeCnt(Integer nanumId, int amount) throws Exception;
	
}
