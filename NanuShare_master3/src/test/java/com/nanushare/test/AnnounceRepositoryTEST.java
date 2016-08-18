package com.nanushare.test;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.nanushare.springproject.domain.announce.AnnVO;
import com.nanushare.springproject.domain.announce.Criteria;
import com.nanushare.springproject.repository.announce.AnnounceRepository;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations={"classpath:spring/*.xml","file:src/main/webapp/WEB-INF/mvc-config.xml"})
public class AnnounceRepositoryTEST {
	
	private static final Logger logger = LoggerFactory.getLogger(AnnounceRepositoryTEST.class);
	
	@Inject
	private AnnounceRepository announceDao;
		
		//@Test
		public void testInsert() throws Exception {
			AnnVO annVO = new AnnVO();
			annVO.setAnnTitle("공지글test");
			annVO.setAnnContents("공지글 내용 test");
			
			announceDao.create(annVO);
		}
		
		//@Test
		public void testRead() throws Exception{
			announceDao.read(1).toString();
		}
		
		//@Test
		public void testUpdate() throws Exception{
			AnnVO annVo = new AnnVO();
			annVo.setAnnId(1);
			annVo.setAnnTitle("수정된 공지글");
			annVo.setAnnContents("수정된 공지글 내용");
			announceDao.update(annVo);
		}
		
		/*@Test
		public void testListPage() throws Exception {
			int page = 3;
			List<AnnVO> list = announceDao.listAll(page);
			
			for(AnnVO annVO : list){
				logger.info(annVO.getAnnId()+":"+annVO.getAnnTitle());
			}
		}*/
		
		@Test
		public void testListCriteria() throws Exception {
			Criteria cri = new Criteria();
			cri.setPage(2);
			cri.setPerPageNum(20);
			
			List<AnnVO> list = announceDao.listAll(cri);
			
			for(AnnVO annVO : list) {
				logger.info(annVO.getAnnId()+":"+annVO.getAnnTitle());
			}
		}

}
