package com.nanushare.springproject.repository.category;

import java.util.List;

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
	public List<ProdCateVO> selectProdCate(ProdCateVO prodCateVO) { //전체 상위 cate를 가져오려면 0 입력
		return sqlSession.selectList(namespace+".selectProdCate",prodCateVO); 
	}

}
