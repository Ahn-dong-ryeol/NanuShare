package com.nanushare.springproject.repository.comment;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.nanushare.springproject.domain.comment.CommentVO;

@Repository
public class CommentRepositoryImpl implements CommentRepository {
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.nanushare.springproject.repository.comment.CommentRepository";
	
	@Override
	public List<CommentVO> list(Integer nanumId) throws Exception {
		return session.selectList(namespace+".list",nanumId);
	}

	@Override
	public void create(CommentVO vo) throws Exception {
		session.insert(namespace+".create", vo);
	}

	@Override
	public void update(CommentVO vo) throws Exception {
		session.update(namespace+".update", vo);
	}

	@Override
	public void delete(Integer nanuCmId) throws Exception {
		session.update(namespace+".delete", nanuCmId);
	}

}
