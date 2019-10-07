package com.shop;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.member.MemberDao;
import com.util.MyBatisCommonFactory;

public class ShopDao {
	Logger logger = Logger.getLogger(ShopDao.class);
	SqlSessionFactory sqlSessionFactory = null;
	SqlSession sqlSession = null;
	public ShopDao() {
		sqlSessionFactory = MyBatisCommonFactory.getSqlSessionFactory();
	}
}
