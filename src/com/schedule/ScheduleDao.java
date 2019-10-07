package com.schedule;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.member.MemberDao;
import com.util.MyBatisCommonFactory;

public class ScheduleDao {
	Logger logger = Logger.getLogger(ScheduleDao.class);
	SqlSessionFactory sqlSessionFactory = null;
	SqlSession sqlSession = null;
	public ScheduleDao() {
		sqlSessionFactory = MyBatisCommonFactory.getSqlSessionFactory();
	}
}
