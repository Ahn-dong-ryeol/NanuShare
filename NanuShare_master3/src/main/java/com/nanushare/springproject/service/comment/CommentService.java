package com.nanushare.springproject.service.comment;

import java.util.List;

import com.nanushare.springproject.domain.comment.CommentVO;

public interface CommentService {
	
	public void addComment(CommentVO vo) throws Exception;
	
	public List<CommentVO> listReply(Integer nanumId) throws Exception;
	
	public void modifyComment(CommentVO vo) throws Exception;
	
	public void removeComment(Integer nanuCmId) throws Exception;
}
