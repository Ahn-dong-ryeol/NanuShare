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
	public void loginGET(@ModelAttribute("memberVO") MemberVO memberVO){
		
	}
	
	@RequestMapping(value = "/login", method=RequestMethod.POST)
	public void loginPOST(MemberVO memberDTO, HttpSession session, Model model) throws Exception {
		MemberVO memberVO = memberService.login(memberDTO);
		
		if(memberVO == null){
			return;
		}
	}
}
