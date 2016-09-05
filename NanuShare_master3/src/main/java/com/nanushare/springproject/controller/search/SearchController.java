package com.nanushare.springproject.controller.search;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nanushare.springproject.service.search.SearchService;

@Controller
@RequestMapping("/search")
public class SearchController {

	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	
	@Inject
	private SearchService service;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main(Model model) throws Exception{
		return null;
		
		//카테고리 목록 --> model
	}
	
	@RequestMapping(value="/", method=RequestMethod.POST)
	public void searchResult(@ModelAttribute("keyword") String keyword,Model model) throws Exception {
		
		logger.info("keyword : "+keyword);
		
		//키워드로 검색한 나눔글을 List<nanumVO>형태로 model에 담아 넘김 
		model.addAttribute("nanumList",service.listSearch(keyword));
	}
	
}
