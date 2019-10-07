package com.both;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.owner.OwnerDao;
import com.util.MyBatisCommonFactory;

public class BothDao {
	Logger logger = Logger.getLogger(BothDao.class);
	SqlSessionFactory sqlSessionFactory = null;
	SqlSession sqlSession = null;
	public BothDao() {
		sqlSessionFactory = MyBatisCommonFactory.getSqlSessionFactory();
	}
	
	public int goINS(Map<String, Object> pMap) {
		logger.info("비품입력 Dao 호출 성공");
		int result = 0;
		logger.info("pMap.get(GO_NAME):"+pMap.get("GO_NAME"));
		try {
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.update("goINS", pMap);	
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

	public List<Map<String, Object>> goSEL() {
		logger.info("비품조회 Dao 호출 성공");
		List<Map<String, Object>> goList = new ArrayList<>();
		try {
			sqlSession = sqlSessionFactory.openSession();
			goList = sqlSession.selectList("goSel");
			sqlSession.commit();
			logger.info("ListSize"+goList.size());
			Map<String,Object> rMap = goList.get(0); logger.info(goList.size());
			logger.info(rMap.get("GO_NAME"));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession!=null) {
				sqlSession.close(); 
			}
			
		}
		return goList;
	}

	public int goUPD(Map<String, Object> pMap) {
		logger.info("비품수정 Dao 호출 성공");
		int result = 0;
		try {
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.update("goUpd", pMap);
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

	public int goDEL(Map<String, Object> pMap) {
		logger.info("비품삭제 Dao 호출 성공");
		int result = 0;
		try {
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.delete("goDEL", pMap);
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

	
}	
	

