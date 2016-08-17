package com.nanushare.springproject.repository.category;

import java.util.List;

import com.nanushare.springproject.domain.category.ProdCateVO;


public interface CategoryRepository {

	public List<ProdCateVO> selectProdCate(int prodCateParantId, int prodCateOrder);
}
