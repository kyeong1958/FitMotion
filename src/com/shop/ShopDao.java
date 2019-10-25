package com.shop;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.member.MemberDao;
import com.util.MyBatisCommonFactory;

public class ShopDao {
   Logger logger = Logger.getLogger(ShopDao.class);
   SqlSessionFactory sqlSessionFactory = null;
   SqlSession sqlSession = null;
   public ShopDao() {
      sqlSessionFactory = MyBatisCommonFactory.getSqlSessionFactory();
   }
   public int eqINS(Map<String, Object> pMap) {
      logger.info("기구관리 insDao");
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
   public List<Map<String, Object>> eqSEL() {
      logger.info("기구관리SelDao 호출성공");
      List<Map<String, Object>> eqSelList = new ArrayList<>();
      try {
         
         sqlSession = sqlSessionFactory.openSession();
         eqSelList = sqlSession.selectList("eqSEL");
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
      logger.info("기구관리 updDao");
         int result = 0;
         try {
            sqlSession = sqlSessionFactory.openSession();
            result = sqlSession.update("eqUPD", pMap);   
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
      logger.info("기구관리 delDao");
         int result = 0;
         try {
            sqlSession = sqlSessionFactory.openSession();
            result = sqlSession.update("eqDEL", pMap);   
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