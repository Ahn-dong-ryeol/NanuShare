package com.nanushare.springproject.service.category;

import java.util.List;

import com.nanushare.springproject.domain.category.ProdCateVO;

public interface CategoryService {
	public List<ProdCateVO> selectProdCate(int prodCateParantId, int prodCateOrder);
}
