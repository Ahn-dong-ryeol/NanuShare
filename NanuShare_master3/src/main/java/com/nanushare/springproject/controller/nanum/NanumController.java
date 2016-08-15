package com.nanushare.springproject.controller.nanum;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nanushare.springproject.domain.nanum.NanumVO;
import com.nanushare.springproject.service.nanum.NanumService;


@Controller
@RequestMapping("/nanum")
public class NanumController {
	
	@Autowired
	NanumService nanumService;
	
	//나눔글 작성 페이지 이동
	@RequestMapping("/nanumwrite")//수정 
	public String nanum(){
		
		return "/nanum/nanumwrite";
	}
	
	//나눔글 작성 처리
	@RequestMapping("/nanuminsert")//수정 
	public String nanumInsert(NanumVO nanumVO){
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
		
		return "/nanum/nanumfinish";
	}

}
