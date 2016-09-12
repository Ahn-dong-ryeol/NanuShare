package com.nanushare.springproject.controller.comment;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.nanushare.springproject.domain.announce.Criteria;
import com.nanushare.springproject.domain.announce.PageMaker;
import com.nanushare.springproject.domain.comment.CommentVO;
import com.nanushare.springproject.service.comment.CommentService;

@RestController
@RequestMapping("/comments")
public class CommentController {

	@Inject
	private CommentService service;
	
	@RequestMapping(value="",method=RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody CommentVO vo){
		// @RepuestBody - 전송된 JSON 데이터를 객체로 변환해 주는 애노테이션, @ModelAttribute와 유사한 역할
		// @ResponseEntity - 개발자가 결과데이터+HTTP의 상태코드를 직접 제어할 수 있는 클래스
		ResponseEntity<String> entity = null;
		try{
			service.addComment(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	// 특정 게시물의 전체 댓글을 조회
	@RequestMapping(value="/all/{nanumId}", method=RequestMethod.GET)
	public ResponseEntity<List<CommentVO>> list(@PathVariable("nanumId") Integer nanumId) {
		// @PathVariable - URI에서 원하는 데이터를 추출하는 용도로 사용
		
		ResponseEntity<List<CommentVO>> entity = null;
		try{
			entity = new ResponseEntity<>(service.listComment(nanumId),HttpStatus.OK);
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	// 수정 처리 put, patch방식 모두 지원
	@RequestMapping(value="/{nanuCmId}", method={RequestMethod.PUT, RequestMethod.PATCH})
	public ResponseEntity<String> update(@PathVariable("nanuCmId") Integer nanuCmId, @RequestBody CommentVO vo) {
		ResponseEntity<String> entity = null;
		try{
			vo.setNanuCmId(nanuCmId);
			service.modifyComment(vo);
			
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		} catch (Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	// 삭제 처리
	@RequestMapping(value="/{nanuCmId}", method = RequestMethod.DELETE)
	public ResponseEntity<String> remove(@PathVariable("nanuCmId") Integer nanuCmId){
		ResponseEntity<String> entity = null;
		try{
			service.removeComment(nanuCmId);
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	//페이지 처리
	@RequestMapping(value="/{nanumId}/{page}", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> listPage(@PathVariable("nanumId") Integer nanumId, 
														@PathVariable("page") Integer page){
		ResponseEntity<Map<String, Object>> entity = null;
		
		try{
			Criteria cri = new Criteria();
			cri.setPage(page);
			
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			
			Map<String, Object> map = new HashMap<String, Object>();
			List<CommentVO> list = service.listMore(nanumId, cri);
			
			map.put("list", list);
			
			int CommentCount = service.count(nanumId);
			pageMaker.setTotalCount(CommentCount);
			
			map.put("pageMaker", pageMaker);
			
			entity = new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
}
