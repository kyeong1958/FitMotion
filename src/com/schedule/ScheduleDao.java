package com.schedule;

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
//예약관리에서 콤보박스에 해당하는 값 가져오기
	public Map<String, Object> scheduleModal() {
		Map<String, Object> scheduleModal = new HashMap<>();
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.selectOne("scheduleModal",scheduleModal);
			logger.info("scheduleModal : "+scheduleModal.keySet().toArray().length);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return scheduleModal;
	}
/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
}
