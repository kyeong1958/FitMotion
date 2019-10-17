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
		/* scheduleModal = new HashMap<>(); */
		try {
			sqlSession = sqlSessionFactory.openSession();
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
	public List<Map<String, Object>> scheduleList() {
		List<Map<String, Object>> scheduleList = new ArrayList<Map<String,Object>>();
		try {
			sqlSession = sqlSessionFactory.openSession();
			scheduleList = sqlSession.selectList("scheduleList");
			for(int i=0; i<scheduleList.size();i++) {
				logger.info(scheduleList.get(i));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return scheduleList;
	}
	
	/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
}
