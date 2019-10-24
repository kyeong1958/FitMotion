package com.shop;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.member.MemberDao;
import com.util.MyBatisCommonFactory;
import com.vo.SupervisorVO;

public class ShopDao {
	Logger logger = Logger.getLogger(ShopDao.class);
	SqlSessionFactory sqlSessionFactory = null;
	SqlSession sqlSession = null;
	public ShopDao() {
		sqlSessionFactory = MyBatisCommonFactory.getSqlSessionFactory();
	}
//////////////////////////////////[[ 경애시작 ]] /////////////////////////////////////////////	
	public List<Map<String, Object>> lockerList() {
		List<Map<String, Object>> lockerList = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			lockerList = sqlSession.selectList("lockerList");
			logger.info(lockerList);
			logger.info(lockerList.size());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return lockerList;
	}
	public int lockUPD(Map<String, Object> pMap) {
		int result = 0;
		try {
			sqlSession = sqlSessionFactory.openSession();
			logger.info(pMap);
			result = sqlSession.update("lockUPD",pMap);
			logger.info(result);
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
	public int lockStatusUPD(Map<String, Object> pMap) {
		int result = 0;
		try {
			sqlSession = sqlSessionFactory.openSession();
			logger.info(pMap);
			result = sqlSession.update("lockStatusUPD",pMap);
			logger.info(result);
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
	public int lockINS(Map<String, Object> pMap) {
		int result = 0;
		try {
			sqlSession = sqlSessionFactory.openSession();
			logger.info(pMap);
			result = sqlSession.update("lockINS",pMap);
			logger.info(result);
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
	public int lockChange(String lockNum) {
		int result = 0;
		try {
			sqlSession = sqlSessionFactory.openSession();
			logger.info(lockNum);
			result = sqlSession.update("lockChange",lockNum);
			logger.info(result);
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
	
	
//////////////////////////////////[[ 경애끝 ]] /////////////////////////////////////////////	
//////////////////////////////////[[ 민지시작 ]] /////////////////////////////////////////////	
	   public int GoodIns(Map<String, Object> pMap) {
		      logger.info("비품관리 insDao");
		      int result = 0;
		      try {
		         sqlSession = sqlSessionFactory.openSession();
		         result = sqlSession.update("gdIns", pMap);   
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
		   public List<Map<String, Object>> GoodSEL() {
		      logger.info("비품 관리SelDao 호출성공");
		      List<Map<String, Object>> eqSelList = new ArrayList<>();
		      try {
		         sqlSession = sqlSessionFactory.openSession();
		         eqSelList = sqlSession.selectList("gdSel");
		      } catch (Exception e) {
		         e.printStackTrace();
		      } finally {
		         if(sqlSession!=null) {
		            sqlSession.close(); 
		         }
		         
		      }
		      return eqSelList;
		   }
		   public int GoodUPD(Map<String, Object> pMap) {
		      logger.info("비품관리 updDao");
		         int result = 0;
		         try {
		            sqlSession = sqlSessionFactory.openSession();
		            result = sqlSession.update("gdUpd", pMap);   
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
		   public int GoodDEL(Map<String, Object> pMap) {
		      logger.info("비품관리 delDao");
		         int result = 0;
		         try {
		            sqlSession = sqlSessionFactory.openSession();
		            result = sqlSession.update("gdDel", pMap);   
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

//////////////////////////////////[[ 민지끝 ]] /////////////////////////////////////////////	
//////////////////////////////////[[ 정은 시작 ]] /////////////////////////////////////////////	
		   public String sisId(SupervisorVO sVO) {
				logger.info("아이디조회 호출");
				String sv_id = null;
				try {
					SqlSession sqlSession = sqlSessionFactory.openSession();
					sv_id = sqlSession.selectOne("sisId",sVO);
					logger.info(sv_id);
				} catch (Exception e) {
					e.printStackTrace();
				}
				return sv_id;
			}
			public String slogin(SupervisorVO sVO) {
				String sv_id = null;
				try {
					SqlSession sqlSession = sqlSessionFactory.openSession();
					sv_id = sqlSession.selectOne("sisId",sVO);
					logger.info(sv_id);
				} catch (Exception e) {
					e.printStackTrace();
				}
				return sv_id;
			}
			public SupervisorVO proc_login(SupervisorVO sVO) {
				try {
					SqlSession sqlSession = sqlSessionFactory.openSession();
					sqlSession.selectOne("proc_login",sVO);
					logger.info("이름: "+sVO.getSv_id());
				} catch (Exception e) {
					e.printStackTrace();
				}
				return sVO;
			}
			public SupervisorVO MY_PROC(SupervisorVO sVO) {
				try {
					SqlSession sqlSession = sqlSessionFactory.openSession();
					sqlSession.selectOne("MY_PROC",sVO);
					logger.info(sVO);
					logger.info(sVO.getClass());
					logger.info(sVO.getSv_id());
					logger.info(sVO.getSv_name());
					logger.info(sVO.getSv_pw());
				} catch (Exception e) {
					e.printStackTrace();
				}
				return sVO;
			}
			public Map<String, Object> MY_PROC2(Map<String, Object> pMap) {
				try {
					SqlSession sqlSession = sqlSessionFactory.openSession();
					sqlSession.selectOne("MY_PROC",pMap);
				} catch (Exception e) {
					e.printStackTrace();
				}
				return pMap;
			
			}
			public int sINS(Map<String, Object> pMap) {
				logger.info("sINS: 호출성공");
				logger.info("pMap.get(sv_id):"+pMap.get("sv_id"));
				int result = 0;
				
				try {
					sqlSession = sqlSessionFactory.openSession();
					result = sqlSession.update("sINS", pMap);
					logger.info(result);
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
			public List<Map<String, Object>> sSEL() {
				logger.info("memSelDao 호출성공");
				int result = 0;
				List<Map<String, Object>> joinList = new ArrayList<>();
				try {
					sqlSession = sqlSessionFactory.openSession();
					joinList = sqlSession.selectList("sSEL");			
					logger.info(result);    
					sqlSession.commit();
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					if(sqlSession!=null) {
						sqlSession.close();
				}
					
				}		
					return joinList;		
			}
			public int slINS(Map<String, Object> pMap) {
				logger.info("slINS: 호출성공");
				logger.info("pMap.get(staff_id):"+pMap.get("staff_id"));
				int result = 0;
				
				try {
					sqlSession = sqlSessionFactory.openSession();
					result = sqlSession.update("slINS", pMap);
					logger.info(result);
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
//////////////////////////////////[[ 정은 끝 ]] /////////////////////////////////////////////	

}
