package com.member;

import java.util.ArrayList;
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
	         result = sqlSession.update("MemUpd", pMap);
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
	      try {
	         sqlSession = sqlSessionFactory.openSession();
	         result = sqlSession.delete("MemDEL", pMap);
	         //logger.info(pMap.get("se_code"));
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
	public int getTotal(List<Map<String, Object>> pMap) {
		int tot = 0;
		try {
			sqlSession = sqlSessionFactory.openSession();
			tot = sqlSession.selectOne("MemSearch",pMap);
			//selectOne : 한개만 출력한다.  =  검색하는부분 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession!=null) {
				sqlSession.close();
			}
		}	
		return tot;
	}
	/*===============================[[민지 끝 ]]===========================================*/
	public List<Map<String, Object>> bhDET() {
		logger.info("회원목록상세조회다오");
		List<Map<String,Object>> bhDetList = new ArrayList<>();
	try {
			sqlSession = sqlSessionFactory.openSession();
			bhDetList = sqlSession.selectList("MemDET");
			 Map<String,Object> rMap = bhDetList.get(0);
			 logger.info(bhDetList.size()); 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession!=null) {
				sqlSession.close(); 
			}
			
		}
		return bhDetList;
	}
}
