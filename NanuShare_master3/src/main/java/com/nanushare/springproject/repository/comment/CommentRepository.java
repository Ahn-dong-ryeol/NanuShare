package com.nanushare.springproject.repository.comment;

import java.util.List;

import com.nanushare.springproject.domain.announce.Criteria;
import com.nanushare.springproject.domain.comment.CommentVO;

public interface CommentRepository {
	
	// 특정 게시물의 댓글List 가져오기
	public List<CommentVO> list(Integer nanumId) throws Exception;
	
	// 댓글 등록
	public void create(CommentVO vo) throws Exception;
	
	// 댓글 수정
	public void update(CommentVO vo) throws Exception;
	
	// 댓글 삭제
	public void delete(Integer nanuCmId) throws Exception;
	
	public List<CommentVO> listMore(Integer nanumId, Criteria cri) throws Exception;
	
	public int count(Integer nanumId) throws Exception;
}
