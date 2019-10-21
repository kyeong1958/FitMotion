package com.account;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.member.MemberDao;
import com.util.MyBatisCommonFactory;

public class AccountDao {
	Logger logger = Logger.getLogger(AccountDao.class);
	SqlSessionFactory sqlSessionFactory = null;
	SqlSession sqlSession = null;
	public AccountDao() {
		sqlSessionFactory = MyBatisCommonFactory.getSqlSessionFactory();
	}
	
	public int pfIns(Map<String, Object> pMap) {
		int result = 0;
		try {
			logger.info("여기탐?");
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.update("pfIns", pMap);	
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession!=null) {
				sqlSession.close(); 
			}
		}
		return result;
	}



	public Map<String, Object> prosel() {
		Map<String,Object> prosel = new HashMap<String, Object>();
		try {
			logger.info("여기탐?");
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.selectOne("promotionSEL",prosel);
			logger.info(prosel);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession!=null) {
				sqlSession.close(); 
			}
		}
		return prosel;
	}
}




