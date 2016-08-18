package com.nanushare.springproject.controller.member;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nanushare.springproject.domain.member.MemberVO;
import com.nanushare.springproject.service.member.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Inject
	MemberService memberService;
	
	//회원가입
	@RequestMapping("/join")
	public String join1(){
		return "member/join1"; // 약관
	}
	@RequestMapping(value="/join2", method=RequestMethod.GET)
	public void join(MemberVO memberVO) throws Exception{
			System.out.println("회원가입 get ");
			//리턴타입이 void면 현재경로의 jsp호출
	}
	
	@RequestMapping(value="/join2", method=RequestMethod.POST)
	public String joinPost(MemberVO memberVO) throws Exception {
		// 생년월일
		System.out.println("생년월일"+memberVO.getMemBrithdate());
		System.out.println("닉네임"+memberVO.getNickname());
		memberVO.setMemBrithdate(memberVO.getMemBrithdate());
		
		//주소합치기
		if(memberVO.getMemAddress1()!=null){
			String[] strArr = {memberVO.getMemAddress1().replace(","," "), memberVO.getMemAddress_detail1()};
			String resultStr = concatenate( strArr );
			memberVO.setMemAddress1(resultStr);
		}else{
			memberVO.setMemAddress1("null");
			memberVO.setMemPostcode1("null");
		}
		if(memberVO.getMemAddress2()!=null){
			String address2 = memberVO.getMemAddress2()+memberVO.getMemAddress_detail2();
			memberVO.setMemAddress2(address2);
		}else{
			memberVO.setMemAddress2("null");
			memberVO.setMemPostcode2("null");
		}
		
		memberService.memberJoin(memberVO);
		System.out.println("회원정보 입력 후 ");
		//return "member/join3";
		return "redirect:/member/join3";
	}
	
	 public static String concatenate(String[] str){
	        //문자열을 결합하여 리턴하는 메소드 구현
	        String result = new String();
	        for (int i = 0; i < str.length; i++) {
	            result = result.concat(str[i]);
	        }      
	        return result;
	    }
	 
	 @RequestMapping(value="/join3", method=RequestMethod.GET)
	 public void joinlogin(Model model) throws Exception {
		 System.out.println("joinlogin 호출됨");
	 }

}
