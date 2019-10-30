package com.schedule;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
//예약관리에서 콤보박스에 해당하는 값 가져오기 select
	public Map<String, Object> scheduleModal(Map<String, Object> scheduleModal) {
		if(scheduleModal.get("mem_num") == null) {
			logger.info("mem_num이 null");
			scheduleModal.put("mem_num","mem_num");
		}
		if(scheduleModal.get("login_id") == null) {
			logger.info("login_id가 null");
			scheduleModal.put("login_id","login_id");
		}
		try {
			sqlSession = sqlSessionFactory.openSession();
			logger.info(scheduleModal);
		    sqlSession.selectOne("scheduleModal",scheduleModal);
			logger.info("scheduleModal2 : "+scheduleModal.keySet().toArray().length);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return scheduleModal;
	}
//수업 예약했을 시 insert
	public String reservationINS(Map<String, Object> pMap) {
		String result = null;
		try {
			Object keys[] = pMap.keySet().toArray();
			for(int i=0;i<pMap.keySet().toArray().length;i++) {
				logger.info(keys[i]+"==>"+pMap.get(keys[i]));
			}
			pMap.put("ep_name","그룹1실");
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.update("reservationINS",pMap);
			result = (String)pMap.get("result");
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return result;
	}
	//스케줄내역 출력
	public List<Map<String, Object>> scheduleList(String login_id) {
		List<Map<String, Object>> scheduleList = new ArrayList<Map<String,Object>>();
		try {
			sqlSession = sqlSessionFactory.openSession();
			scheduleList = sqlSession.selectList("scheduleList",login_id);
				logger.info(scheduleList.size());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return scheduleList;
	}
	public int caUPD(Map<String, Object> attendMap) {
		int result = 0;
		try {
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.update("caUPD",attendMap);
			if(result == 1) {
				sqlSession.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return result;
	}
	public String reservationUPD(Map<String, Object> pMap) {
		String result = null;
		try {
			Object keys[] = pMap.keySet().toArray();
			for(int i=0;i<pMap.keySet().toArray().length;i++) {
				logger.info(keys[i]+"==>"+pMap.get(keys[i]));
			}
			pMap.put("ep_name","그룹1실");
			sqlSession = sqlSessionFactory.openSession();
			logger.info(pMap);
//			sqlSession.update("reservationUPD",pMap);
//			result = (String)pMap.get("result");
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return result;
	}
	public List<Map<String, Object>> staffList() {
		List<Map<String, Object>> staffList = new ArrayList<Map<String,Object>>();
		try {
			sqlSession = sqlSessionFactory.openSession();
			staffList = sqlSession.selectList("staffList");
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return staffList;
	}
	
	/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
}
