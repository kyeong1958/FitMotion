package com.shop;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;


import com.util.MyBatisCommonFactory;

public class ShopDao {
   Logger logger = Logger.getLogger(ShopDao.class);
   SqlSessionFactory sqlSessionFactory = null;
   SqlSession sqlSession = null;
   public ShopDao() {
      sqlSessionFactory = MyBatisCommonFactory.getSqlSessionFactory();
   }
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
}