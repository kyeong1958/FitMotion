package com.owner;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
	public List<Map<String, String>> allsales() {
		logger.info("OwnerDao 호출성공");
		 List<Map<String, String>> allsales = new ArrayList<>();
		 try {
				sqlSession = sqlSessionFactory.openSession();
				allsales = sqlSession.selectList("allsales");
				sqlSession.commit();
				logger.info("OwnerDao / allsales.size() "+allsales.size());
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(sqlSession!=null) {
					sqlSession.close();
				}
			}
		return allsales;
	}
}
