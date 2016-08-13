package com.nanushare.springproject.controller.member;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nanushare.springproject.domain.member.MemberVO;
import com.nanushare.springproject.service.member.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	//회원가입
	@RequestMapping("/join1")
	public String join1(){
		return "/member/join#join1";
	}
	@RequestMapping("/join")
	public String join(MemberVO memberVO, Model model) throws Exception{
		if(memberVO.getMemId()!=null){//post
			System.out.println(memberVO.getMemId());
			System.out.println(memberVO.getMemGender());		
			
			//생년월일 합치기
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
			System.out.println(memberVO.getBirthYear()+"-"+memberVO.getBirthMonth()+"-"+memberVO.getBirthDay());//테스트 출력(생년월일)
			Date birthDate = transFormat.parse(memberVO.getBirthYear()+"-"+memberVO.getBirthMonth()+"-"+memberVO.getBirthDay());
			memberVO.setMemBrithdate(birthDate);
			
			//주소합치기
			if(memberVO.getMemAddress1()!=null){
				String address1 = memberVO.getMemAddress1()+memberVO.getMemAddress_detail1();
				memberVO.setMemAddress1(address1);
			}
			if(memberVO.getMemAddress2()!=null){
				String address2 = memberVO.getMemAddress2()+memberVO.getMemAddress_detail2();
				memberVO.setMemAddress2(address2);
			}
			memberService.memberJoin(memberVO);
			System.out.println("회원정보 입력 후 ");
			return "/member/join#join3";
		}else{
			System.out.println("회원가입 get ");
			return "/member/join";//회원가입폼
		}
	}
}