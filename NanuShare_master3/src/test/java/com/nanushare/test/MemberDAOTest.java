package com.nanushare.test;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.nanushare.springproject.domain.member.MemberVO;
import com.nanushare.springproject.repository.member.MemberRepository;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations={"classpath:spring/*.xml","file:src/main/webapp/WEB-INF/mvc-config.xml"})
public class MemberDAOTest {
	
	@Inject
	private MemberRepository memberDao;
	
	@Test
	public void testTime() throws Exception{
		System.out.println(memberDao.getTime());
	}
	
	@Test
	public void testInsertMember() throws Exception {
		MemberVO memberVO = new MemberVO();
		memberVO.setMemId("user00");
		memberVO.setMemPw("user00");
		memberVO.setNickname("USER00");
		
		memberDao.memberInsert(memberVO);
	}

}
