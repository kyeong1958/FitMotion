package com.member;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.util.MyBatisCommonFactory;
//주노꺼랑 이관완료
public class MemberDao {
	Logger logger = Logger.getLogger(MemberDao.class);
	SqlSessionFactory sqlSessionFactory = null;
	SqlSession sqlSession = null;
	public MemberDao() {
		sqlSessionFactory = MyBatisCommonFactory.getSqlSessionFactory();
	}
	/*===============================[[민지 시작 ]]===========================================*/
	public int bfIns(Map<String, Object> pMap) {
		int result = 0;
		try {
			logger.info("여기탐?");
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.update("MemModal", pMap);	
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
	public List<Map<String, Object>> bhSel() {
		logger.info("회원목록 조회부분 Dao 호출성공");
		List<Map<String,Object>> bhSelList = new ArrayList<>();
	try {
			
			sqlSession = sqlSessionFactory.openSession();
			bhSelList = sqlSession.selectList("MemSel");
			
			 Map<String,Object> rMap = bhSelList.get(0);
			 
			
			 logger.info(bhSelList.size()); 
			 logger.info(rMap.get("MEM_NAME"));
			 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession!=null) {
				sqlSession.close(); 
			}
			
		}
		
		return bhSelList;
	}
	public int bhUPD(Map<String, Object> pMap) {
	      logger.info("bhUPD Dao 호출성공");
	      int result = 0;
	      try {
	         sqlSession = sqlSessionFactory.openSession();
	         result = sqlSession.update("memUPD", pMap);
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
	   public int bhDEL(Map<String, Object> pMap) {
	      logger.info("bhDEL Dao 호출성공");
	      int result = 0;
	      logger.info(pMap);
	      logger.info(pMap);
	      logger.info(pMap);
	      logger.info(pMap);
	      try {
	         sqlSession = sqlSessionFactory.openSession();
	         result = sqlSession.delete("MemDEL", pMap);
	         logger.info(pMap);
	         logger.info(pMap);
	         logger.info(pMap);
	         logger.info(result);
	         logger.info(result);
	         sqlSession.commit();
	      } catch (Exception e) {
	         e.printStackTrace();
	      }finally {
	         if(sqlSession!=null) {
	            sqlSession.close();
	         }
	      }
	      return result;
	   }

	/*===============================[[민지 끝 ]]===========================================*/
	/*===============================[[주노시작]]================================================*/
	public Map<String, Object> bhDET(Map<String, Object> pMap) {
	      logger.info("회원목록상세조회다오");
	      Map<String,Object> rMap = new HashMap<>();
	   try {
	         sqlSession = sqlSessionFactory.openSession();
	          rMap = sqlSession.selectOne("memDET",pMap);
	          logger.info("너타냐1212");
	          logger.info(rMap);
	          logger.info(rMap.size()); 
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         if(sqlSession!=null) {
	            sqlSession.close(); 
	         }
	         
	      }
	      return rMap;
	}
	/*===============================[[주노끝]]================================================*/
}
