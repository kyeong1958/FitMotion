package com.member;

public class MemberLogic {
	MemberDao memberDao = null;
	public MemberLogic() {
		memberDao = new MemberDao();
	}
}
