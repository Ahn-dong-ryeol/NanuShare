package com.nanushare.springproject.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "/view/home";
	}
	@RequestMapping(value = "/view/join", method = RequestMethod.GET)
	public String ex(){
		return "/view/join";
	}
	@RequestMapping(value = "/view/nanum", method = RequestMethod.GET)
	public String ex1(){
		return "/view/nanum";
	}
	@RequestMapping(value = "/view/mypage", method = RequestMethod.GET)
	public String ex2(){
		return "/view/mypage"; 
	}
}
