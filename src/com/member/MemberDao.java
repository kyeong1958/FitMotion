package com.member;

import java.util.List;
import java.util.Map;

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
	/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
	public List<Map<String, Object>> memInfoList(String mem_name) {
		List<Map<String, Object>> memInfoList = null;
		Map<String, Object> pMap = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			logger.info(mem_name);
			memInfoList = sqlSession.selectList("memInfoList",mem_name);
			logger.info("memInfoList.size : "+memInfoList.size());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession!=null) {
				sqlSession.close();
			}
		}
		return memInfoList;
	}
	/////////////////////////////// [[ 경애  ]] /////////////////////////////////////	
	
}
