<%@page import="java.util.Random"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	String email = null;
	if(request.getParameter("email") != null){
		email = request.getParameter("email");
	}
	String smtpServer = "smtp.naver.com";
	// 사용하고자하는 smtp 서버의 계정 정보
	final String userName = "lta0719";
	final String passWard = "lta79519ae!!";
	// 보내는 사람 이메일 주소
	String fromMail = "lta0719@naver.com";
	int smtpPort = 465;
	// 받는 이
	String toMail = email;
	// 메일 제목
	String subject = "FitMotion ID찾기 인증번호 발송";
	// 메일 내용 - 인증문자열
	StringBuffer auth = new StringBuffer();
	Random rnum = new Random();
	for (int i = 0; i < 8; i++) {
	    int rIndex = rnum.nextInt(3);
	    switch (rIndex) {
	    case 0:
	        // a-z
	        auth.append((char) ((int) (rnum.nextInt(26)) + 97));
	        break;
	    case 1:
	        // A-Z
	        auth.append((char) ((int) (rnum.nextInt(26)) + 65));
	        break;
	    case 2:
	        // 0-9
	        auth.append((rnum.nextInt(10)));
	        break;
	    }
	}
	String content = auth.toString(); 
	out.print(content);
	Properties props = System.getProperties();
	props.put("mail.smtp.host", smtpServer);
	props.put("mail.smtp.port", smtpPort);
	props.put("mail.smtp.auth", true);
	props.put("mail.smtp.ssl.enable", true);
	props.put("mail.smtp.ssl.trust", smtpServer);
	// 물리적으로 떨어져 있는 SMTP서버의 접속하기 - 인증처리 - 통과 - 전송가능함.
	Session mySession = Session.getDefaultInstance(props, new Authenticator() {
		protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(userName, passWard);
		}
	});
	try {
		MimeMessage msg = new MimeMessage(mySession);
		msg.setFrom(new InternetAddress(fromMail));
		msg.setRecipient(Message.RecipientType.TO, new InternetAddress(toMail));
		msg.setSubject(subject);
		msg.setText(content);
		Transport.send(msg);
	} catch(Exception e) {
		e.printStackTrace();
	}
	
%>