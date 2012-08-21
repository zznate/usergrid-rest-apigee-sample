<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="net.tanesha.recaptcha.ReCaptcha"%>
<%@ page import="net.tanesha.recaptcha.ReCaptchaFactory"%>
<%@ page import="org.usergrid.rest.AbstractContextResource"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="chrome=1">
	<title>Reset Password</title>
	<meta name="description" content="Apigee Reset Password">
	<meta name="copyright" content="2012 Apigee" />
	<meta name="distribution" content="global" />
	<meta name="language" content="English" />
	<meta name="rating" content="Safe for Kids" />
	<meta name="revisit-after" content="15 days" />
	<meta name="robots" content="index,follow" />      
    <link href="https://accounts.apigee.com/git/css/sso.css?ver=20120605-1026" type="text/css" rel="stylesheet"/>
    <link href="https://accounts.apigee.com/git/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <!--[if lte IE 7]>
      <link href="https://accounts.apigee.com/git/css/ie7.css" rel="stylesheet" type="text/css"/>
    <![endif]-->

  </head>
  <body>
	  <div id="container">
			<header>
				<a class="logo" href="http://apigee.com"></a>
			  <div class="clear"></div>
				<b class="caret"></b>
			</header>
			<div class="content">
				<div class="sso-conatainer reset_password" >
					<div class="page-header">
						<h1>Reset your Password</h1> 	
					</div>
					<div class="icon_cotainer well">
					</div>
					<div class="well sso" id="reset_password_container">
						<div class="reset_password_content">
						  <h4> Supply a new password and you're back in business</h4>
<c:if test="${!empty it.errorMsg}"><div class="dialog-form-message">${it.errorMsg}</div></c:if>
						  <form method="post" action="" name="frmSSO" id="frmSSO">
						  <input type="hidden" name="token" value="${it.token}"/>
							  <div class="column">
							  	<div class="input_wrapper">
									  <div class="input_box">
								  		<input id="password1" name="password1" class="input-xtralarge js_password" type="password" placeholder="Create Password" autocomplete="off"/>
									  </div>
									  <div class="clear"></div>
									  <div class="error_message"></div>
								  </div>
							  	<div class="input_wrapper">
									  <div class="input_box">
								  		<input id="password2" name="password2" class="input-xtralarge js_confirmPassword" type="password" placeholder="Confirm Password"/>
									  </div>
									  <div class="clear"></div>
									  <div class="error_message"></div>
								  </div>
			
								  <div class="clear"></div>
								  <button type="submit" class="btn btn-xtralarge" id="btnSubmit">Submit</button>
							  </div>
							</form>
						</div>
						<p class="error_container"></p>
					</div>      
					<div class="clear"></div>
					<div class="well sso" id="forgot_password_confirm_container">
						<div class="envelope"></div>
						<div class="forgot_password_confirm_content">
							<h3>Check your email</h3>
							<p>A reset password message was sent to <span class="email"></p>
						</div>
					</div>	 
				</div>
			</div>
			<footer>
				<p>&copy; 2012 Apigee Corporation</p>
			  <a class="logo" href="http://apigee.com"></a>
			 	<b class="caret"></b>
			</footer>			
		</div>
		<div class="alert alert-error">
      <button class="close" data-dismiss="alert">x</button>
      <p></p>
    </div>		
  </body>
</html>








