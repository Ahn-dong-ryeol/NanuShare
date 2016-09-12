package com.nanushare.springproject.service.comment;

import java.util.List;

import com.nanushare.springproject.domain.announce.Criteria;
import com.nanushare.springproject.domain.comment.CommentVO;

public interface CommentService {
	
	public void addComment(CommentVO vo) throws Exception;
	
	public List<CommentVO> listComment(Integer nanumId) throws Exception;
	
	public void modifyComment(CommentVO vo) throws Exception;
	
	public void removeComment(Integer nanuCmId) throws Exception;
	
	public List<CommentVO> listMore(Integer nanumId, Criteria cri) throws Exception;
	
	public int count(Integer nanumId) throws Exception;
}
