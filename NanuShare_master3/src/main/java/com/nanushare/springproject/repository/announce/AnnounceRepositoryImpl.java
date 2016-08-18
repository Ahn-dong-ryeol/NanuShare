package com.nanushare.springproject.repository.announce;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.nanushare.springproject.domain.announce.AnnVO;
import com.nanushare.springproject.domain.announce.Criteria;

@Repository
public class AnnounceRepositoryImpl implements AnnounceRepository{

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.nanushare.springproject.repository.announce.AnnounceRepository";
	
	@Override
	public void create(AnnVO annVO) throws Exception {
		session.insert(namespace+".create",annVO);
	}

	@Override
	public AnnVO read(Integer annId) throws Exception {
		return session.selectOne(namespace+".read",annId);
	}

	@Override
	public void update(AnnVO annVO) throws Exception {
		session.update(namespace+".update",annVO);
	}

	@Override
	public void delete(Integer annId) throws Exception {
		session.delete(namespace+".delete",annId);
	}

	@Override
	public List<AnnVO> listAll(Criteria cri) throws Exception {
		return session.selectList(namespace+".listAll",cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace+".countPaging",cri);
	}

}
