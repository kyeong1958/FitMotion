package com.member;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.util.MyBatisCommonFactory;

public class MemberDao {
	Logger logger = Logger.getLogger(MemberDao.class);
	SqlSessionFactory sqlSessionFactory = null;
	SqlSession sqlSession = null;
	public MemberDao() {
		sqlSessionFactory = MyBatisCommonFactory.getSqlSessionFactory();
	}
}
