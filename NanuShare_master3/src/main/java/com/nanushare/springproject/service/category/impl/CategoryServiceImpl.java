package com.nanushare.springproject.service.category.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.nanushare.springproject.domain.category.ProdCateVO;
import com.nanushare.springproject.repository.category.CategoryRepository;
import com.nanushare.springproject.service.category.CategoryService;

public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	CategoryRepository categoryRepository;

	@Override
	public List<ProdCateVO> selectProdCate() {
		List<ProdCateVO> resultVO = categoryRepository.selectProdCate();
		return resultVO;
	}

}
