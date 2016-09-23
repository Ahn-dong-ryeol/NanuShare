package com.nanushare.springproject.repository.nanum;



import java.util.Map;

import com.nanushare.springproject.domain.nanum.NanumVO;

public interface NanumRepository {
	//나눔 글 저장 
	public void insertNanum(NanumVO nanumVO) throws Exception;
	
	//나눔 글 이미지 정보 저장 
	public void addNanumImgAttach(Map<String, Object> map) throws Exception;
	
	// 좋아요 수 증가
	public void updateLikeCnt(Integer nanumId, int amount) throws Exception;
	
}
