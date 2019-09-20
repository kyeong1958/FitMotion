package com.owner;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.util.MyBatisCommonFactory;

public class OwnerDao {
	Logger logger = Logger.getLogger(OwnerDao.class);
	SqlSessionFactory sqlSessionFactory = null;
	SqlSession sqlSession = null;
	public OwnerDao() {
		sqlSessionFactory = MyBatisCommonFactory.getSqlSessionFactory();
	}
	public String test() {
		logger.info("Dao");
		String result = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.selectOne("test2");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
