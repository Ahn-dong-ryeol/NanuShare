package com.nanushare.test;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.nanushare.springproject.domain.nanum.NanumVO;
import com.nanushare.springproject.repository.search.SearchRepository;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations={"classpath:spring/*.xml","file:src/main/webapp/WEB-INF/mvc-config.xml"})
public class SearchDAOTest {

	private static final Logger logger = LoggerFactory.getLogger(SearchDAOTest.class);
	
	@Inject
	private SearchRepository searchDao;
	
	@Test
	public void testListSearch() throws Exception {
		
		String keyword = "스마트폰";
		Integer prodCateId = 501;
		
//		List<NanumVO> list = searchDao.listSearch(keyword);
		List<NanumVO> list = searchDao.subListSearch(prodCateId ,keyword);
		
		logger.info("list의 크기 : "+list.size());
		
		for(NanumVO nanumVO : list){
			logger.info(nanumVO.getNanumTitle()+" : "+nanumVO.getNanumContent());
		}
		
		logger.info("=========================================");
	}
}
