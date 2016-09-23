package com.nanushare.test;


import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.nanushare.springproject.domain.nanum.NanumVO;
import com.nanushare.springproject.repository.nanum.NanumRepository;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring/*.xml","file:src/main/webapp/WEB-INF/mvc-config.xml"})
public class NanumRepositoryTest {
	
	private static final Logger logger = LoggerFactory.getLogger(NanumRepositoryTest.class);
	
	@Inject
	private NanumRepository repo;
	
	@Test
	public void testCreate() throws Exception{
		NanumVO nanum = new NanumVO();
		nanum.setNanumDelibery("택배");
		nanum.setNanumTitle("나눔할게욧!!33");
		nanum.setNanumContent("이거 나눔할건데 가질래 말래? ");
		nanum.setNanumChoiceNum(2);
		nanum.setNanumEndDate("2016-09-25");
		nanum.setNanumState("나눔진행중");
		nanum.setNanumDeleteCheck("Y");
		
		nanum.setNanumCategoryId(101);
		nanum.setNanumWriter("test");
		nanum.setNanumMethod("랜덤");
		
		repo.insertNanum(nanum);
		
/*		List<ImgVO> imgList = new ArrayList<ImgVO>();
		
		ImgVO img1 =  new ImgVO();
		img1.setImgId("11/11/11/hi.jpg");
		img1.setImgFileExtension("JPG");
		
		ImgVO img2 = new ImgVO();
		img2.setImgId("11/11/11/hello.jpg");
		img2.setImgFileExtension("JPG");
		
		imgList.add(img1);
		imgList.add(img2);
		
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("list", imgList);
		
		repo.addNanumImgAttach(paramMap);*/
		
		
	}
}
