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
/////////////////////////수근시작//////////////////////
		//전체매출 통계
		public  Map<String,List<Map<String, String>>> allsales(String date) {
		logger.info("AccountDao 호출성공");
		List<Map<String, String>> memCount = new ArrayList<>();
		List<Map<String, String>> memCount2 = new ArrayList<>();
		List<Map<String, String>> memAge = new ArrayList<>();
		List<Map<String, String>> memAge2 = new ArrayList<>();
		List<Map<String, String>> salespcNew = new ArrayList<>();
		List<Map<String, String>> salespcRe = new ArrayList<>();
		
		List<Map<String, String>> dateList = new ArrayList<>();
		Map<String,String> dateMap = new HashMap<String, String>();
		String year = date.substring(0,4); 
		String month = date.substring(4);
		dateMap.put("year", year);
		dateMap.put("month", month);
		dateList.add(dateMap);
		
		Map<String,List<Map<String, String>>> allsales = new HashMap<>();
		try {
		sqlSession = sqlSessionFactory.openSession();
		
		memCount = sqlSession.selectList("memCount");
		memCount2 = sqlSession.selectList("memCount2",date);
		memAge = sqlSession.selectList("memAge");
		memAge2 = sqlSession.selectList("memAge2",date);
		salespcNew = sqlSession.selectList("salespcNew",date);
		salespcRe = sqlSession.selectList("salespcRe",date);
		allsales.put("남여고정", memCount);
		allsales.put("남여변동", memCount2);
		allsales.put("연령고정", memAge);
		allsales.put("연령변동", memAge2);
		allsales.put("매출신규", salespcNew);
		allsales.put("매출재결제", salespcRe);
		allsales.put("날짜", dateList);
		
		sqlSession.commit();
		logger.info("AccountDao / allsales.size() "+allsales.size());
		} catch (Exception e) {
		e.printStackTrace();
		} finally {
		if(sqlSession!=null) {
		sqlSession.close();
		}
		}
		return allsales;
		}
		//회원 통계
		public  Map<String,List<Map<String, String>>> memsales(String date) {
		logger.info("AccountDao 호출성공");
		List<Map<String, String>> mems = new ArrayList<>();
		List<Map<String, String>> mems2 = new ArrayList<>();
		List<Map<String, String>> mems3 = new ArrayList<>();
		List<Map<String, String>> dateList = new ArrayList<>();
		Map<String,String> dateMap = new HashMap<String, String>();
		String year = date.substring(0,4); 
		String month = date.substring(4);
		dateMap.put("year", year);
		dateMap.put("month", month);
		dateList.add(dateMap);
		
		Map<String,List<Map<String, String>>> memsales = new HashMap<>();
		try {
		sqlSession = sqlSessionFactory.openSession();
		mems = sqlSession.selectList("visitmem",date);
		mems2 = sqlSession.selectList("visittime",date);
		mems3 = sqlSession.selectList("visitpay",date);
		memsales.put("방문회원", mems);
		memsales.put("방문시간", mems2);
		memsales.put("방문결제", mems3);
		memsales.put("날짜", dateList);
		sqlSession.commit();
		logger.info("AccountDao / memsales.size() "+memsales.size());
		} catch (Exception e) {
		e.printStackTrace();
		} finally {
		if(sqlSession!=null) {
		sqlSession.close();
		}
		}
		return memsales;
		}
		//개인레슨 통계
		public Map<String, List<Map<String, String>>> privateProg(String startDate, String endDate) {
		logger.info("AccountDao-privateProg 호출성공");
		Map<String,List<Map<String, String>>> privateProg = new HashMap<>();
		List<Map<String, String>> prog = new ArrayList<>();
		List<Map<String, String>> prog2 = new ArrayList<>();
		List<Map<String, String>> prog3 = new ArrayList<>();
		List<Map<String, String>> prog4 = new ArrayList<>();
		List<Map<String, String>> prog5 = new ArrayList<>();
		
		List<Map<String, String>> dateList = new ArrayList<>();
		Map<String,String> dateMap = new HashMap<String, String>();
		String start = startDate;
		String end = endDate;
		String hap;
		dateMap.put("start", start);
		dateMap.put("end", end);
		hap = start + "," + end;
		logger.info("hap : "+hap);
		dateList.add(dateMap);
		try {
		sqlSession = sqlSessionFactory.openSession();
		prog = sqlSession.selectList("privateProg",hap);
		prog2 = sqlSession.selectList("privatehap",hap);			
		prog3 = sqlSession.selectList("privategender",hap);			
		prog4 = sqlSession.selectList("privategender2",hap);			
		prog5 = sqlSession.selectList("getCount",hap);			
		privateProg.put("개인강의매출", prog);
		privateProg.put("개인강의합", prog2);
		privateProg.put("개인강의여자", prog3);
		privateProg.put("개인강의남자", prog4);
		privateProg.put("개인페이지네이션", prog5);
		privateProg.put("날짜", dateList);
		
		sqlSession.commit();
		
		logger.info("AccountDao / privateProg.size() "+privateProg.size());
		} catch (Exception e) {
		e.printStackTrace();
		} finally {
		if(sqlSession!=null) {
		sqlSession.close();
		}
		}
		return privateProg;
		}
		//그룹 레슨 통계
		public Map<String, List<Map<String, String>>> publicProg(String startDate, String endDate) {
		logger.info("AccountDao-publicProg 호출성공");
		Map<String,List<Map<String, String>>> publicProg = new HashMap<>();
		List<Map<String, String>> proga = new ArrayList<>();
		List<Map<String, String>> proga2 = new ArrayList<>();
		List<Map<String, String>> proga3 = new ArrayList<>();
		List<Map<String, String>> proga4 = new ArrayList<>();
		List<Map<String, String>> dateList = new ArrayList<>();
		Map<String,String> dateMap = new HashMap<String, String>();
		String start = startDate;
		String end = endDate;
		String hap;
		dateMap.put("start", start);
		dateMap.put("end", end);
		hap = start + "," + end;
		
		dateList.add(dateMap);
		try {
		sqlSession = sqlSessionFactory.openSession();
		proga = sqlSession.selectList("publicProg",hap);
		proga2 = sqlSession.selectList("publichap",hap);			
		proga3 = sqlSession.selectList("publicgender",hap);			
		proga4 = sqlSession.selectList("publicgender2",hap);			
		
		publicProg.put("그룹강의매출", proga);
		publicProg.put("그룹강의합", proga2);
		publicProg.put("그룹강의남자", proga3);
		publicProg.put("그룹강의여자", proga4);
		
		sqlSession.commit();
		
		logger.info("AccountDao / publicProg.size() "+publicProg.size());
		} catch (Exception e) {
		e.printStackTrace();
		} finally {
		if(sqlSession!=null) {
		sqlSession.close();
		}
		}
		return publicProg;
		}
/////////////////////////수근끝/////////////////////////

}
