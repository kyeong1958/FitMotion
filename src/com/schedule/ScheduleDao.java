package com.schedule;

import java.util.ArrayList;
import java.util.Collection;
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
	String resv = "";
	List<String>result=null;
	List<String> s_list = new ArrayList<String>();
	public ScheduleDao() {
		sqlSessionFactory = MyBatisCommonFactory.getSqlSessionFactory();
	}
	/////////////////////////////////////////// [[ 광현 ]] ///////////////////////////
	public  List<Map<String, Object>> schedule( ) {
		SqlSession sqlSession = sqlSessionFactory.openSession();	
		logger.info("다오여기가냐");
		 List<Map<String, Object>> schedule = null;
		try {
			schedule = sqlSession.selectList("Schselect");
/*			s_list.addAll(schedule);
			for(int i=0;i<s_list.size();i++) {
			s_list.get(i);*/
//}
			//			s_list.add(schedule);
		//	for(int i=0;i<s_list.size();i++) {
			//	s_list.get(i);
			//}
//		    sqlSession.commit();
			logger.info(schedule);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return schedule;
	}
	/////////////////////////////////////////// [[ 광현 ]] ///////////////////////////
	public int getCount() {
		// TODO Auto-generated method stub
		return 0;
	}
	public int getCount(String kwd) {
		// TODO Auto-generated method stub
		return 0;
	}
}
