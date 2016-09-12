package com.nanushare.springproject.controller.search;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nanushare.springproject.domain.category.ProdCateVO;
import com.nanushare.springproject.service.category.CategoryService;
import com.nanushare.springproject.service.search.SearchService;

@Controller
@RequestMapping("/search")
public class SearchController {

	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	
	@Inject
	private SearchService searchService;
	@Inject
	private CategoryService categoryService;
	
	//search메인화면
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main(Model model) throws Exception{
		List<ProdCateVO> mainCateList = categoryService.selectProdCate(new ProdCateVO(0));//메인 카테고리 검색(0)
		model.addAttribute("mainCateList",mainCateList);
		return "search/searchMain";//search/searchMain.jsp로 넘김
	}
	
	//키워드로 검색 처리
	@RequestMapping(value="/", method=RequestMethod.POST)
	public String searchResult(@ModelAttribute("keyword") String keyword, Model model) throws Exception {
		
		logger.info("keyword : "+keyword);
		
		//키워드로 검색한 나눔글을 List<nanumVO>형태로 model에 담아 넘김 
		model.addAttribute("nanumListSearch",searchService.listSearch(keyword));
		
		return "search/searchKeyword";
	}
	
	//상세카테고리 선택
	@RequestMapping(value="/sub", method=RequestMethod.GET)
	public void subCatelist(@ModelAttribute("cate") int prodCateParentId, Model model) throws Exception {
		// 하위 카테고리 목록
		List<ProdCateVO> subCateList = categoryService.selectProdCate(new ProdCateVO(prodCateParentId));
		model.addAttribute("subCateList",subCateList);
		
		// 해당 카테고리 나눔글 목록
		model.addAttribute("subNanumList",searchService.cateListSearch(prodCateParentId));
	}
	
	
	
	
}
