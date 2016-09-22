package com.nanushare.springproject.service.nanum;

import com.nanushare.springproject.domain.nanum.NanumVO;

public interface NanumService {
	//나눔글 작성 처리
	public void nanumInsert(NanumVO nanumVO)throws Exception;
	
	//좋아요 처리
	public void updateLikeCnt(Integer nanumId, int amount) throws Exception;
}
