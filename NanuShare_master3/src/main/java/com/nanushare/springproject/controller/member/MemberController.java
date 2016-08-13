package com.nanushare.springproject.controller.member;

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
		return "/member/join1";
	}
	@RequestMapping("/join2")
	public String join(MemberVO memberVO, Model model) throws Exception{
		if(memberVO.getMemId()!=null){//post
			
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
			return "/member/join3";
		}else{							//get방식
			System.out.println("회원가입 get ");
			return "/member/join2";//회원가입폼
		}
	}
	 public static String concatenate(String[] str){
	        //문자열을 결합하여 리턴하는 메소드 구현
	        String result = new String();
	        for (int i = 0; i < str.length; i++) {
	            result = result.concat(str[i]);
	        }      
	        return result;
	    }
	 

}
