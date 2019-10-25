package com.program;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.member.MemberDao;
import com.util.MyBatisCommonFactory;

public class ProgramDao {
	Logger logger = Logger.getLogger(ProgramDao.class);
	SqlSessionFactory sqlSessionFactory = null;
	SqlSession sqlSession = null;
	public ProgramDao() {
		sqlSessionFactory = MyBatisCommonFactory.getSqlSessionFactory();
	}
	public int taINS(Map<String, Object> pMap) {
		logger.info("이용권등록입력 Dao 호출 성공");
		int result = 0;
		logger.info("pMap.get(ticket_name):"+pMap.get("ticket_name"));
		try {
			sqlSession = sqlSessionFactory.openSession();
			logger.info("타냐????");
			result = sqlSession.update("taINS", pMap);	
			logger.info("타냐????2");
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			 if(sqlSession!=null) {
				 	sqlSession.close(); 
			}
		}
		return result; 
	}
	public List<Map<String, Object>> taSEL() {
		logger.info("이용권등록조회 Dao 호출 성공");
		List<Map<String, Object>> taList = new ArrayList<>();
		try {
			sqlSession = sqlSessionFactory.openSession();
			taList = sqlSession.selectList("taSel");
			sqlSession.commit();
			logger.info("ListSize"+taList.size());
			Map<String,Object> rMap = taList.get(0); 
			logger.info(taList.size());
			logger.info(rMap.get("ticket_name"));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession!=null) {
				sqlSession.close(); 
			}
			
		}
		return taList;
	}
}
