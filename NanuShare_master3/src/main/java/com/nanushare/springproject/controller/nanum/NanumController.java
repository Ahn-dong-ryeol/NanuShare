package com.nanushare.springproject.controller.nanum;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nanushare.springproject.domain.nanum.NanumVO;
import com.nanushare.springproject.service.nanum.NanumService;


@Controller
@RequestMapping("/nanum")
public class NanumController {
	
	@Inject
	NanumService nanumService;
	
	//나눔글 작성 페이지 이동
	@RequestMapping(value="/nanumWrite", method=RequestMethod.GET)//수정 
	public void nanumWrite(){
	}
	
	//나눔글 작성 처리
	@RequestMapping(value="/nanumWrite", method=RequestMethod.POST)//수정 
	public String nanumWrite(NanumVO nanumVO) throws Exception{
		//테스트용 데이터 입력
		System.out.println("1. 테스트용 데이터 삽입!");
		nanumVO.setNanumId(1);
		nanumVO.setNanumDelibery("택배");
		nanumVO.setNanumTitle("나눔할게요~");
		nanumVO.setNanumContent("나눔한당");
		nanumVO.setNanumChoiceNum(2);
		nanumVO.setNanumEndDate( "2016-08-12");
		nanumVO.setNanumState("나눔중");
		nanumVO.setNanumDeleteCheck("Y");
		//nanumVO.setNanumHits(0); //Mapper에서 0
		nanumVO.setNanumCategoryId(11);
		nanumVO.setNanumWriter("test");
		nanumVO.setNanumMethod("랜덤");
		
		nanumService.nanumInsert(nanumVO);
		System.out.println("4. 삽입완료");
		
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
