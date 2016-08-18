package com.nanushare.springproject.service.announce;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.nanushare.springproject.domain.announce.AnnVO;
import com.nanushare.springproject.domain.announce.Criteria;
import com.nanushare.springproject.repository.announce.AnnounceRepository;

@Service
public class AnnounceServiceImpl implements AnnounceService{
	
	@Inject
	private AnnounceRepository announceRepository;

	@Override
	public void regist(AnnVO annVO) throws Exception {
		announceRepository.create(annVO);
	}

	@Override
	public AnnVO read(Integer annId) throws Exception {
		return announceRepository.read(annId);
	}

	@Override
	public void modify(AnnVO annVO) throws Exception {
		announceRepository.update(annVO);		
	}

	@Override
	public void remove(Integer annId) throws Exception {
		announceRepository.delete(annId);
	}

	@Override
	public List<AnnVO> listAll(Criteria cri) throws Exception {
		return announceRepository.listAll(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return announceRepository.countPaging(cri);
	} 
}
