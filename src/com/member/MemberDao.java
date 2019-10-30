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
	/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
	public List<Map<String, Object>> memInfoList(String mem_name) {
		List<Map<String, Object>> memInfoList = null;
		Map<String, Object> pMap = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			logger.info(mem_name);
			memInfoList = sqlSession.selectList("memInfoList",mem_name);
			logger.info("memInfoList.size : "+memInfoList.size());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession!=null) {
				sqlSession.close();
			}
		}
		return memInfoList;
	}
	/////////////////////////////// [[ 경애  ]] /////////////////////////////////////	
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
	/*
	 * public List<Map<String, Object>> bhSel() { logger.info("회원목록 조회부분 Dao 호출성공");
	 * List<Map<String,Object>> bhSelList = new ArrayList<>(); try {
	 * 
	 * sqlSession = sqlSessionFactory.openSession(); bhSelList =
	 * sqlSession.selectList("MemSel");
	 * 
	 * Map<String,Object> rMap = bhSelList.get(0);
	 * 
	 * 
	 * logger.info(bhSelList.size()); logger.info(rMap.get("MEM_NAME"));
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } finally { if(sqlSession!=null)
	 * { sqlSession.close(); }
	 * 
	 * }
	 * 
	 * return bhSelList; }
	 */
	
	public List<HashMap> bhsel(Map<String, String> pMap) {
		 List<HashMap> bhSelList = new ArrayList<>();
	      try {
	    	  sqlSession = sqlSessionFactory.openSession();
	    	  bhSelList= sqlSession.selectList("MemSelkek",pMap);
	    	  logger.info("sfSelList : "+bhSelList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
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
		public List<Map<String, Object>> bhSel2() {
			logger.info("회원목록 조회부분 Dao 호출성공");
			List<Map<String,Object>> bhSelList = new ArrayList<>();
		try {
				
				sqlSession = sqlSessionFactory.openSession();
				bhSelList = sqlSession.selectList("MemSel");
				 Map<String,Object> rMap = bhSelList.get(0);
				 logger.info(bhSelList.size());
				 
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(sqlSession!=null) {
					sqlSession.close(); 
				}
				
			}
			
			return bhSelList;
		}
		
		////////////////////////////2019-10-30추가/////////////////////////////
		//이용권관리 - 프로모션
		public List<Map<String, Object>> probil(Map<String, Object> pMap) {
			List<Map<String, Object>> probilList = new ArrayList<Map<String,Object>>();
			logger.info(pMap);
			try {
				sqlSession = sqlSessionFactory.openSession();
				probilList = sqlSession.selectList("memprobil",pMap);
				logger.info(probilList);
				 
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(sqlSession!=null) {
					sqlSession.close(); 
				}
				
			}
			
			return probilList;
		}
		
		//이용권관리 - 티켓
		public List<Map<String, Object>> ticketbil(Map<String, Object> pMap) {
			List<Map<String, Object>> ticbilList = new ArrayList<Map<String,Object>>();
			logger.info(pMap);
			try {
				sqlSession = sqlSessionFactory.openSession();
				ticbilList = sqlSession.selectList("memtickbil",pMap);
				
				logger.info(ticbilList);
				 
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(sqlSession!=null) {
					sqlSession.close(); 
				}
				
			}
			
			return ticbilList;
		}
		
		//성별조건검색
		public List<Map<String, Object>> Memgender(Map<String, Object> pMap) {
			List<Map<String, Object>> genderList = new ArrayList<Map<String,Object>>();
			logger.info(pMap);
			try {
				sqlSession = sqlSessionFactory.openSession();
				genderList = sqlSession.selectList("memgender",pMap);
				
				logger.info(genderList);
				 
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(sqlSession!=null) {
					sqlSession.close(); 
				}
			}
			return genderList;
		}
		
		//이용권 입장관리 
		public List<Map<String, Object>> memAttSEL(Map<String, Object> pMap) {
		      logger.info("회원출결목록 Dao 호출성공");
		      List<Map<String,Object>> mAttSELList = new ArrayList<>();
		   try {
		         sqlSession = sqlSessionFactory.openSession();
		         mAttSELList = sqlSession.selectList("memAttSEL",pMap);
		          logger.info(mAttSELList.size()); 
		      } catch (Exception e) {
		         e.printStackTrace();
		      } finally {
		         if(sqlSession!=null) {
		            sqlSession.close(); 
		         }
		      }
		      return mAttSELList;
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
