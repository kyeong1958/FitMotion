package com.util;

import java.io.File;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/*
 * 사용자가 입력한 값을 읽을 때마다 반복되는 request.getParameter()를 대신해서
 * 사용할 수 있는 bind메소드 추가하기
 * 리턴 타입은 void로 하지만 파라미터를 Map타입으로 하여 필요한 개발자가 Map을 생성하고
 * 그 주소번지를 받아서 여기에 값을 담는다.
 */
public class HashMapBinder {
	Logger logger = Logger.getLogger(HashMapBinder.class);
	HttpServletRequest req = null;
	//첨부 파일 추가
	MultipartRequest multi = null;
	String realFolder = "";
	//첨부파일의 한글처리
	String encType = "UTF-8";
	//첨부파일의 크기
	int maxSize = 5*1024*1024;
	//req 객체를 서블릿에서 받아와야 하니까
	public HashMapBinder(HttpServletRequest req) {
		this.req = req;
		realFolder = "D:\\workspace_jsp\\dev_jsp\\WebContent\\pds\\";
	}
	//첨부파일 처리시 사용할 메소드
	public void multiBind(Map<String,Object> pMap) {
		pMap.clear();
		try {
			//같은 파일명이 있을 때 overwrite가 아니라 파일명 뒤에 다른 식별자를 줌.
			multi = new MultipartRequest(req,realFolder,maxSize,encType,new DefaultFileRenamePolicy());
		} catch (Exception e) {
			e.printStackTrace();
		}
		Enumeration<String> en = multi.getParameterNames();
		while(en.hasMoreElements()) {
			String key = en.nextElement();
			pMap.put(key, multi.getParameter(key));
		}
		//첨부파일에 대한 정보를 받아오기
		Enumeration<String> files = multi.getFileNames();
		if(files!=null) {
			//읽어온 파일이름을 객체로 만듦 - 파일크기를 계산할 때 메소드를 지원
			File file = null;
			while(files.hasMoreElements()) {
				String fname = files.nextElement();
				String filename = multi.getFilesystemName(fname);
				pMap.put("bs_file", filename);
				if(filename!=null && filename.length()>1) {
					file = new File(realFolder+filename);
				}
			}
			logger.info("pMap.size()  "+pMap.size());
			//첨부파일 크기 계산
			double size = 0;
			if(file != null) {
				size = file.length();//파일의 크기 계산
				size = size/(1024.0);
				pMap.put("bs_size",	size);
			}
		}
	}
	//get방식으로 요청시 사용
	/************************************************************************************
	 * 
	 * @param target Map<String,Object> 객체생성해서 넘길 것.
	 * 주의 : NullPointerException 
	 */
	public void bind(Map<String,Object> target) {
		//파라미터로 넘어온 target안에 다른 정보가 담겨 있다면 제거
		logger.info("너타냐냐냐냔냐냐냐");
		target.clear();
		Enumeration er = req.getParameterNames();
		while(er.hasMoreElements()) {
			String name = (String)er.nextElement();//name,address,pet
			if("pet".equals(name)) {
				String values[] = req.getParameterValues(name);
				String myPet = "";
				if(values!=null) {
					for(int i=0;i<values.length;i++){
						myPet += values[i]+"  ";
					}
					target.put("pet", myPet);
				}
			}
			//key에는 name, address, pet이 와야함
			//value에는 각 key가 가리키는 값이 오면 됨.
			else {
			target.put(name, HangulConversion.toUTF(req.getParameter(name)));
			}
		
		}
	}
	//post방식으로 요청시 사용 - 한글처리 인코딩은 UFT-8
	public void bindPost(Map<String,Object> target) {
		target.clear();
		Enumeration er = req.getParameterNames();
		while(er.hasMoreElements()) {
			String name = (String)er.nextElement();
			target.put(name, req.getParameter(name));
		}
	}
}
