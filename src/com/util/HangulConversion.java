package com.util;

public class HangulConversion {
	//화면에서 전송한 값을 euc-kr 인코딩 된 걸 컨버전 할 때
	public static String toKor(String en) {
		if(en == null) return null;
		try {
			//1byte 언어인 영어는 숫자 및 기호 포함 컨버전 한 것과 안한 것의 차이가 없음.
			return new String(en.getBytes("8859_1"),"EUC-KR");
		} catch (Exception e) {
			return en;//만일 예외가 발생하면 기존의 인코딩 타입대로 출력
		}
	}
	//화면에서 전송한 값을 utf-8 인코딩 된 걸 컨버전 할 때
	//다국어 지원, ajax는 디폴드 값임.
	public static String toUTF(String en) {
		if(en == null) return null;
		try {
			return new String(en.getBytes("8859_1"),"UTF-8");
		} catch (Exception e) {
			return en;//만일 예외가 발생하면 기존의 인코딩 타입대로 출력
		}
	}
}
