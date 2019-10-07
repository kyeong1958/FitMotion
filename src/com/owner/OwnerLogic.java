package com.owner;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class OwnerLogic {
	Logger logger = Logger.getLogger(OwnerLogic.class);
	OwnerDao ownerDao = null;
	public OwnerLogic() {
		ownerDao = new OwnerDao();
	}
	public List<Map<String, String>> allsales() {
		logger.info("OwnerLogic 호출성공");
		List<Map<String, String>> allsales = null;
		allsales = ownerDao.allsales();
		return allsales;
	}

}
