package com.nanushare.springproject.controller.member;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nanushare.springproject.domain.member.MemberVO;
import com.nanushare.springproject.service.member.MemberService;

@Controller
@RequestMapping("/member")
public class LoginController {
	
	@Inject
	MemberService memberService;
	
	@RequestMapping(value = "/login", method=RequestMethod.GET)
	public void loginGET(@ModelAttribute("memberVO") MemberVO memberVO) throws Exception{
		System.out.println("loginGET 실행");
	}
	
	@RequestMapping(value = "/login", method=RequestMethod.POST)
	public void loginPOST(MemberVO memberDTO, HttpSession session, Model model) throws Exception {
	// 리턴타입이 void인 경우 현재 경로에 해당하는 jsp파일을 실행
		System.out.println("loginPOST 실행");
		MemberVO memberVO = memberService.login(memberDTO.getMemId(),memberDTO.getMemPw());
		
		if(memberVO == null){
			return;
		}
		
		model.addAttribute("memberVO",memberVO);
	}
	
	
}
