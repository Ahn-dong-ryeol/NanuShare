package com.nanushare.springproject.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nanushare.springproject.domain.category.ProdCateVO;
import com.nanushare.springproject.service.category.CategoryService;


@Controller
public class MainController {
	
	@Inject
	CategoryService categoryService;
	
	@RequestMapping("/main")
	public String main(Model m){
		List<ProdCateVO> resultVO = categoryService.selectProdCate(new ProdCateVO(0));
		m.addAttribute("prodCate", resultVO);//home.jsp에서 prodCate 로 데이터 받아서 뿌려주면 됨.
		return "home";
	}

}
