package com.nanushare.springproject.repository.nanum;

import com.nanushare.springproject.domain.nanum.NanumVO;

public interface NanumRepository {
	//나눔 글 작성 처리 
	void nanumInsert(NanumVO nanumVO);
}
