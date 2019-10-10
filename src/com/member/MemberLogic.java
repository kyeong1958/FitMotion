package com.member;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class MemberLogic {
	Logger logger = Logger.getLogger(MemberLogic.class);
	MemberDao memberDao = null;
	public MemberLogic() {
		memberDao = new MemberDao();
	}
	/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
	//회원검색창에서 회원정보찾는 메소드
	public List<Map<String, Object>> memInfoList(String mem_name) {
		logger.info("memInfoList Logic");
		List<Map<String, Object>> memInfoList = null;
		memInfoList = memberDao.memInfoList(mem_name);
		return memInfoList;
	}
	/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
}
