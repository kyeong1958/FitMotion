package com.owner;

import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggerFactory;

public class OwnerLogic {
	Logger logger = Logger.getLogger(OwnerController.class);
	public String test() {
		OwnerDao ownerDao = new OwnerDao();
		String result = ownerDao.test();
		return result;
	}

}
