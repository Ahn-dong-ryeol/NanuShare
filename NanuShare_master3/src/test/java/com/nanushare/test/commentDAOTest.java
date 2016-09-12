package com.nanushare.test;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.nanushare.springproject.domain.comment.CommentVO;
import com.nanushare.springproject.repository.comment.CommentRepository;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations={"classpath:spring/*.xml","file:src/main/webapp/WEB-INF/mvc-config.xml"})
public class commentDAOTest {

	private static final Logger logger = LoggerFactory.getLogger(commentDAOTest.class);
	
	@Inject
	private CommentRepository commentDao;
	
	@Test
	public void testComment() throws Exception{
		CommentVO commentVO = new CommentVO();
		
		List<CommentVO> commentList = commentDao.list(2);
		
		for(CommentVO commentVO2 : commentList){
			logger.info(commentVO2.getNanumId()+" : "+commentVO2.getNanuCmContent());
		}
		
		logger.info("=========================================");
	}
}
