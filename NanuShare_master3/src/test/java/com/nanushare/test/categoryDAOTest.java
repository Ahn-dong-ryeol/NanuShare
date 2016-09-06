package com.nanushare.test;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.nanushare.springproject.domain.category.ProdCateVO;
import com.nanushare.springproject.repository.category.CategoryRepository;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations={"classpath:spring/*.xml","file:src/main/webapp/WEB-INF/mvc-config.xml"})
public class categoryDAOTest {
	
private static final Logger logger = LoggerFactory.getLogger(categoryDAOTest.class);
	
	@Inject
	private CategoryRepository categoryDao;
	
	@Test
	public void testListSearch() throws Exception {
		
		ProdCateVO prodCateVO = new ProdCateVO(100);
		
		List<ProdCateVO> mainCateList = categoryDao.selectProdCate(prodCateVO);
		
		logger.info("mainCateList의 크기 : "+mainCateList.size());
		
		for(ProdCateVO mainCateVO : mainCateList){
			logger.info(mainCateVO.getProdCateName()+":"+mainCateVO.getProdCateId());
		}
		
		logger.info("=========================================");
	}
	
}
