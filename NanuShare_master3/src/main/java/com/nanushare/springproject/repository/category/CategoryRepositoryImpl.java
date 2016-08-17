package com.nanushare.springproject.repository.category;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.nanushare.springproject.domain.category.ProdCateVO;

@Repository
public class CategoryRepositoryImpl implements CategoryRepository{

	@Inject
	private SqlSession sqlSession;
	
	// 해당 mapper의 namespace값
	private static final String namespace = "com.nanushare.springproject.repository.category.CategoryRepository";
	
	@Override
	public List<ProdCateVO> selectProdCate(int prodCateParantId, int prodCateOrder) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("prodCateParantId", prodCateParantId);
		paramMap.put("prodCateOrder", prodCateOrder);
		return sqlSession.selectList(namespace+".selectProdCate",paramMap); 
	}

}
