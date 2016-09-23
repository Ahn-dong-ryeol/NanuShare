package com.nanushare.springproject.controller.nanum;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nanushare.springproject.domain.image.ImgVO;
import com.nanushare.springproject.domain.nanum.NanumVO;
import com.nanushare.springproject.service.nanum.NanumService;


@Controller
@RequestMapping("/nanum")
public class NanumController {
	
	@Inject
	NanumService nanumService;
	
	//나눔글 작성 페이지 이동
	@RequestMapping(value="/nanumRegister", method=RequestMethod.GET)//수정 
	public void nanumRegister(){
	}
	
	//나눔글 작성 처리
	@RequestMapping(value="/nanumRegister", method=RequestMethod.POST)//수정 
	public String nanumRegister(@ModelAttribute("nanumVO") NanumVO nanumVO, 
								@ModelAttribute("imgList")List<ImgVO> imgList) throws Exception{
		// 이미지 정보 리스트를 받아서, 저장
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("list", imgList);
		
		nanumService.nanumRegister(nanumVO, paramMap);
		
		
		return "/nanum/nanumfinish";//나눔글 목록 이동으로 수정.
	}
	
	//좋아요
	@RequestMapping(value="/like/{nanumId}", method=RequestMethod.GET)
	public ResponseEntity<String> nanumLike(@PathVariable("nanumId") Integer nanumId){
		ResponseEntity<String> entity = null;
		try{
			nanumService.updateLikeCnt(nanumId, 1);
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

}
