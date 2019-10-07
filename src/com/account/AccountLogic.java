package com.account;

public class AccountLogic {
	AccountDao accountDao = null;
	public AccountLogic () {
		accountDao = new AccountDao();
	}
}
