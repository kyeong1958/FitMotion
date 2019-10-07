package com.both;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;


import com.util.MyBatisCommonFactory;
import com.vo.EquipmentVO;

public class BothDao {
	Logger logger = Logger.getLogger(BothDao.class);
	SqlSessionFactory sqlSessionFactory = null;
	SqlSession sqlSession = null;
	public BothDao() {
		
		sqlSessionFactory = MyBatisCommonFactory.getSqlSessionFactory();
	}
	public int eqIns(Map<String, Object> pMap) {
		logger.info("eqInsDao: 호출성공");
		logger.info("pMap.get(se_code):"+pMap.get("se_code"));
		logger.info("pMap.get(gym_code):"+pMap.get("gym_code"));
		int result = 0;
		try {
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.update("eqINS", pMap);	
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
	public List<Map<String, Object>> eqSel() {
		logger.info("eqSelDao 호출성공");
		List<Map<String, Object>> eqSelList = new ArrayList<>();
		try {
			
			sqlSession = sqlSessionFactory.openSession();
			eqSelList = sqlSession.selectList("eqSel");
			/*
			 * Map<String,Object> rMap = eqSelList.get(0);
			 */
			/*
			 * logger.info(eqSelList.size()); 
			 * logger.info(rMap.get("SE_NAME"));
			 */
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession!=null) {
				sqlSession.close(); 
			}
			
		}
		return eqSelList;
	}

	public int eqUPD(Map<String, Object> pMap) {
		int result = 0;
		try {
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.update("eqUpd", pMap);
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
	public int eqDEL(Map<String, Object> pMap) {
		logger.info("eqDEL Dao 호출성공");
		int result = 0;
		try {
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.delete("eqDEL", pMap);
			logger.info(pMap.get("se_code"));
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
