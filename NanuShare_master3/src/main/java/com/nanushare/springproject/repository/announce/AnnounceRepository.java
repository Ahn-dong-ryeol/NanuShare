package com.nanushare.springproject.repository.announce;

import java.util.List;

import com.nanushare.springproject.domain.announce.AnnVO;
import com.nanushare.springproject.domain.announce.Criteria;

public interface AnnounceRepository {
	public void create(AnnVO annVO) throws Exception;
	public AnnVO read(Integer annId) throws Exception;
	public void update(AnnVO annVO) throws Exception;
	public void delete(Integer annId) throws Exception;
	public List<AnnVO> listAll(Criteria cri) throws Exception;
	public int countPaging(Criteria cri) throws Exception;
}
