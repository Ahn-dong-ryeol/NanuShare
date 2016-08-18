package com.nanushare.springproject.service.announce;

import java.util.List;

import com.nanushare.springproject.domain.announce.AnnVO;
import com.nanushare.springproject.domain.announce.Criteria;

public interface AnnounceService {
	public void regist(AnnVO annVO) throws Exception;
	public AnnVO read(Integer annId) throws Exception;
	public void modify(AnnVO annVO) throws Exception;
	public void remove(Integer annId) throws Exception;
	public List<AnnVO> listAll(Criteria cri) throws Exception;
	public int listCountCriteria(Criteria cri) throws Exception;
}
