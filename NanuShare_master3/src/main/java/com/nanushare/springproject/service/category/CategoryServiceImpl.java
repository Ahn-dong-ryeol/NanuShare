package com.nanushare.springproject.service.category;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.nanushare.springproject.domain.category.ProdCateVO;
import com.nanushare.springproject.repository.category.CategoryRepository;

@Service
public class CategoryServiceImpl implements CategoryService {
	
	@Inject
	private CategoryRepository categoryRepository;
	
	/*@Autowired
	CategoryRepository categoryRepository;*/

	@Override
	public List<ProdCateVO> selectProdCate(int prodCateParantId, int prodCateOrder) {
		List<ProdCateVO> resultVO = categoryRepository.selectProdCate(prodCateParantId,prodCateOrder);
		return resultVO;
	}

}
