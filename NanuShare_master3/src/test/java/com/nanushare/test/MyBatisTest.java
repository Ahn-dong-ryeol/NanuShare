package com.nanushare.test;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations={"classpath:spring/*.xml"})
public class MyBatisTest {
	
	@Inject
	private SqlSessionFactory sqlFactory;//SqlSessionFactory
	
	@Test
	public void testFactory(){
		System.out.println(sqlFactory);
	}
	
	@Test
	public void testSession() throws Exception {
		try(SqlSession session = sqlFactory.openSession()){//SqlSession
			System.out.println(session);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
