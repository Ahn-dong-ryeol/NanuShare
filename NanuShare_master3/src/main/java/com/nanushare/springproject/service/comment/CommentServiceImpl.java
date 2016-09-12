package com.nanushare.springproject.service.comment;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.nanushare.springproject.domain.comment.CommentVO;
import com.nanushare.springproject.repository.comment.CommentRepository;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Inject
	private CommentRepository dao;

	@Override
	public void addComment(CommentVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public List<CommentVO> listReply(Integer nanumId) throws Exception {
		return dao.list(nanumId);
	}

	@Override
	public void modifyComment(CommentVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void removeComment(Integer nanuCmId) throws Exception {
		dao.delete(nanuCmId);
	}
	
	
}
