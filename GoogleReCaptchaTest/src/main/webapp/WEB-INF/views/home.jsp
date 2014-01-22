<?xml version="1.0" encoding="UTF-8"?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="net.tanesha.recaptcha.ReCaptcha"%>
<%@ page import="net.tanesha.recaptcha.ReCaptchaFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="net.tanesha.recaptcha.ReCaptchaImpl"%>
<%@ page import="net.tanesha.recaptcha.ReCaptchaResponse"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<form action="/captchatest/verify" method="post">
		<div id="captcha_paragraph">
			<c:if test="${invalidRecaptcha == true}">
				<span class="error_form_validation"></span>
			</c:if>
			<%
				ReCaptcha c = ReCaptchaFactory.newReCaptcha(
							"6LeEX-0SAAAAAG-kVPCL0Ol2-gzbzxCL7Vzy9Bd_",
							"6LeEX-0SAAAAAB1qdguS6LYQgbEm8wrDALxDlDhC", false);
					out.print(c.createRecaptchaHtml(null, null));
			%>
		</div>
		
		 <input type="submit" value="submit" />
	</form>






</body>
</html>
