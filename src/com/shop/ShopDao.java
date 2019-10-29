package com.shop;

import java.util.ArrayList;
import java.util.HashMap;
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
	public String idFind(Map<String, Object> pMap) {
		String id = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.selectOne("idFind",pMap);
			logger.info(pMap);
			id = pMap.get("id").toString();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return id;
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
//////////////////////////////////[[ 정은 시작 -> 경애 시작 ]] /////////////////////////////////////////////	
		   //로그인
			public Map<String, Object> slogin(Map<String, Object> pMap) {
				try {
					SqlSession sqlSession = sqlSessionFactory.openSession();
					sqlSession.selectOne("sisId",pMap);
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
			//아이디중복검사
			public String idCheck(String joinid) {
				Map<String,Object> pMap = new HashMap<String, Object>();
				pMap.put("joinid",joinid);
				String result = null;
				try {
					SqlSession sqlSession = sqlSessionFactory.openSession();
					sqlSession.selectOne("idCheck",pMap);
					logger.info(pMap);
					result = pMap.get("result").toString();
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
		             if(sqlSession!=null) {
		                   sqlSession.close(); 
		            }
		         }
				return result;
			}
			//회원가입
			public int join(Map<String, Object> pMap) {
				int result = 0;
				try {
					SqlSession sqlSession = sqlSessionFactory.openSession();
					if ("super".equals(pMap.get("target"))){
						sqlSession.selectOne("superjoin",pMap);
						logger.info(pMap);
						result = Integer.parseInt(pMap.get("result").toString());
						logger.info(result);
						if(result == 1) {
							sqlSession.commit();
						}
					}else if ("staff".equals(pMap.get("target"))){
						sqlSession.update("staffjoin",pMap);
						result = Integer.parseInt(pMap.get("result").toString());
						logger.info(result);
						if(result == 1) {
							sqlSession.commit();
						}
					}
					logger.info(pMap);
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
		             if(sqlSession!=null) {
		                   sqlSession.close(); 
		            }
		         }
				return result;
			}
			

//////////////////////////////////[[ 정은 끝 -> 경애 끝 ]] /////////////////////////////////////////////	
}
