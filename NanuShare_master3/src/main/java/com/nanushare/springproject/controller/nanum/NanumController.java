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
		nanumVO.setNanumId(1);
		nanumVO.setNanumDelibery("택배");
		nanumVO.setNanumTitle("나눔할게요~");
		nanumVO.setNanumContent("나눔한당");
		nanumVO.setNanumChoiceNum(2);
		//nanumVO.setNanumEndDate( "2016-08-12");
		
		
		
		nanumService.nanumInsert(nanumVO);
		
		return "/nanum/nanumfinish";
	}

}
