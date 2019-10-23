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
//////////////////////////////////[[ 경애 시작 ]] ///////////////////////////////////////////////////////////////////
	public Map<String, Object> salesStatementMap(Map<String, Object> date) {
		Map<String, Object> rMap = new HashMap<String, Object>();
		try {
			sqlSession = sqlSessionFactory.openSession();
			rMap  = sqlSession.selectOne("salesStatementMap", date);
			logger.info(rMap);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) sqlSession.close();
		}
		return rMap;
	}
	public List<Map<String, Object>> ssTableList(int month) {
		List<Map<String, Object>> ssTableList = new ArrayList<Map<String,Object>>();
		try {
			sqlSession = sqlSessionFactory.openSession();
			ssTableList  = sqlSession.selectOne("ssTableList", month);
			logger.info(ssTableList);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) sqlSession.close();
		}
		return ssTableList;
	}
	public Map<String, Object> expenseStatementMap(Map<String, Object> date) {
		Map<String, Object> rMap = new HashMap<String, Object>();
		try {
			sqlSession = sqlSessionFactory.openSession();
			rMap  = sqlSession.selectOne("expenseStatementMap", date);
			logger.info(rMap);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) sqlSession.close();
		}
		return rMap;
	}
	public List<Map<String, Object>> esTableList(int month) {
		List<Map<String, Object>> esTableList = new ArrayList<Map<String,Object>>();
		try {
			sqlSession = sqlSessionFactory.openSession();
			esTableList  = sqlSession.selectOne("esTableList", month);
			logger.info(esTableList);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) sqlSession.close();
		}
		return esTableList;
	}
//////////////////////////////////[[ 경애 끝 ]] ///////////////////////////////////////////////////////////////////

	/*
	 * ====================================[[민지 시작]]==========================================
	 */
	public int pfIns(Map<String, Object> pMap) {
		int result = 0;
		try {
			logger.info("여기탐?");
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.update("pfIns", pMap);
			logger.info(pMap);
			logger.info(result);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return result;
	}

	public Map<String, Object> prosel() {
		Map<String, Object> prosel = new HashMap<String, Object>();
		try {
			logger.info("여기탐?");
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.selectOne("promotionSEL", prosel);
			//logger.info(prosel);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return prosel;
	}

	public List<Map<String, Object>> probuysel() {
		List<Map<String, Object>> ProbuySel = new ArrayList<Map<String,Object>>();
		try {
			logger.info("여기탐?");
			sqlSession = sqlSessionFactory.openSession();
			ProbuySel = sqlSession.selectList("promobuysel");
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return ProbuySel;
	}
	/*
	  ====================================[[민지 끝]]==========================================
	 */

}
