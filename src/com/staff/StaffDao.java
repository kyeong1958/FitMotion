package com.staff;


import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import com.util.MyBatisCommonFactory;
//주노꺼랑 이관완료
public class StaffDao {
   Logger logger = Logger.getLogger(StaffDao.class);
   SqlSessionFactory sqlSessionFactory = null;
   SqlSession sqlSession = null;
   public StaffDao() {
      sqlSessionFactory = MyBatisCommonFactory.getSqlSessionFactory();
   }
   //=================================[[민지 dao 시작]]=============================================
   public int sfIns(Map<String, Object> pMap) {
	   
      int result = 0;
      logger.info("staffsal먼저타야댐");
      try {
         sqlSession = sqlSessionFactory.openSession();
         result = sqlSession.update("staffsal", pMap);   
         logger.info(result);
      } catch (Exception e) {
    	  e.printStackTrace();
      } finally {
         if(sqlSession!=null) {
            sqlSession.close(); 
         }
      }
      
      return result;
   }
   public int sfInsert(Map<String, Object> pMap) {
      int result =0;
      logger.info("두번쪠로 타는곳 여기탐?");
      SqlSession sqlSession = sqlSessionFactory.openSession();   
      try {
    	  Connection conn =null;
          result = sqlSession.update("Staffinsert",pMap);
          logger.info(result);
          if(result == 0) {
        	  logger.info("rollback  댔당");
         	 conn.rollback();
          }else {
         	 
         	 sqlSession.commit();
          }
      }catch (Exception e) {
         e.printStackTrace();
      }finally {
         sqlSession.close();
      }
      return result;
   }
   
   public List<HashMap> sfSel(Map<String, String> pMap) {
      logger.info("직원목록 조회부분 Dao 호출성공");
      List<HashMap> sfSelList = new ArrayList<>();
      try {
    	  sqlSession = sqlSessionFactory.openSession();
    	  sfSelList= sqlSession.selectList("proc_name",pMap);
    	  logger.info("sfSelList : "+sfSelList);
		
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		if(sqlSession!=null) {
			sqlSession.close();
		}
	}
	return sfSelList; 
    		
   }
   public int rkIns(Map<String, Object> pMap) {
	   logger.info("rkInsDao호출성공");
	  int result = 0;
	  try {
		  logger.info("타나");
		  sqlSession = sqlSessionFactory.openSession();
	         result = sqlSession.update("rankInsert", pMap);   
	         logger.info(result);
	         sqlSession.commit();
	} catch (Exception e) {
		
	}finally {
		if(sqlSession!=null) {
			sqlSession.close();
		}
	}
	  
	   return result;
   }
	public List<Map<String, Object>> rkSel() {
		logger.info("rkSelDao 호출성공");
		List<Map<String,Object>> rankList = new ArrayList<>();
		try {
			logger.info("너여기타니?");
			sqlSession = sqlSessionFactory.openSession();
			rankList= sqlSession.selectList("rankname");
			logger.info(rankList.size());
			logger.info(rankList);
			sqlSession.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession!=null) {
				sqlSession.close();
			}
		}
		return rankList;
	}
	public Map<String, Object> sfDtl(Map<String, Object> map) {
		  logger.info("직원목록 상세조회 Dao 호출성공");
	   try {
	         sqlSession = sqlSessionFactory.openSession();
	          sqlSession.selectOne("proc_staffDetail",map);
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         if(sqlSession!=null) {
	            sqlSession.close(); 
	         }
	      }
	      return map;
	}
	public int SFUPD(Map<String, Object> pMap) {
			   
		      int result = 0;
		      logger.info("SFUPD먼저타야댐");
		      try {
		         sqlSession = sqlSessionFactory.openSession();
		         result = sqlSession.update("SFUPD", pMap);   
		         logger.info(result);
		      } catch (Exception e) {
		    	  e.printStackTrace();
		      } finally {
		         if(sqlSession!=null) {
		            sqlSession.close(); 
		         }
		      }
		      
		      return result;
		   }
		   public int SFUPDATE(Map<String, Object> pMap) {
		      int result =0;
		      logger.info("두번째로 타는곳 여기탐?");
		      try {
		    	   sqlSession = sqlSessionFactory.openSession();   
		    	  Connection conn =null;
		          result = sqlSession.update("SFUPDATE",pMap);
		          logger.info(result);
		          if(result == 0) {
		        	  logger.info("rollback  댔당");
		         	 conn.rollback();
		          }else {
		         	 
		         	 sqlSession.commit();
		          }
		      }catch (Exception e) {
		         e.printStackTrace();
		      }finally {
		         sqlSession.close();
		      }
		      return result;
		   }
   //=================================[[민지 dao 끝]]=============================================
/////////////////////////////////////////// [[ 경애 시작 ]] //////////////////////////////////////////////////////		   
		public Map<String, Object> staffSalaryDetail( Map<String, Object> pMap) {
			String todate = pMap.get("year")+"/"+pMap.get("month");
			pMap.put("todate",todate);			
			try {
		         sqlSession = sqlSessionFactory.openSession();
		         sqlSession.selectOne("staffSalaryDetail", pMap);   
		         logger.info(pMap);
		      } catch (Exception e) {
		    	  e.printStackTrace();
		      } finally {
		         if(sqlSession!=null) {
		            sqlSession.close(); 
		         }
		      }
		      return pMap;
		   }
/////////////////////////////////////////// [[ 경애 끝 ]] //////////////////////////////////////////////////////		   
}