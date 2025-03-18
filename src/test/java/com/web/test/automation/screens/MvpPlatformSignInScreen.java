package com.web.test.automation.screens;

import java.util.Arrays;

import com.automation.web.ccl.PlayActions;

import junit.framework.Assert;

public class MvpPlatformSignInScreen {
	
	String email = "//input[@name='email']";
	String password = "//input[@name='password']";
	String eyeIcon = "//input[@name='password']/following-sibling::button";
	String signInBtn = "//button[@type='submit']";
	String errorPopup = "//div[@role='alert']/div[2]";
	String emailErrorMsg = "//input[@name='email']/following-sibling::p";
//	needtochange
	String passwordErrorMsg = "//p[text()='String must contain at least 8 character(s)']";
	String headTxt = "//h1";
	String regisLink = "//a[text()='Register']";
	String forPwdLnk = "//a[text()='Forgot Password?']";
	String regHeadText = "//p[text()='REGISTER']";
	String forPwdHeadText = "//p[text()='FORGOT PASSWORD']";
	String signInLnk = "//a[text()='Sign in']";
	
	PlayActions play = new PlayActions();

	public void userIsInMvp90App() throws InterruptedException {
		play.navigate("https://portal.mvpin90days.com/auth/signin");
//		play.navigate("https://dev.portal.mvpin90days.com/");
		Thread.sleep(3000);
	}

	public void enterValidEmail() {
		play.fill(email, "platformadmin@mail.com", "email");
	}


	public void entersValidPassword() {
		play.fill(password, "12345678", "password");
	}

	public void clickSignInBtn() {
		play.click(signInBtn, "SignIn Button");
	}

	public void homePage() {
		String ActualTxt = play.textContent(errorPopup);
		play.verifyText(ActualTxt, "Login successful!");
		String text = play.textContent(headTxt);
		play.verifyText(text, "Home");
		
	}



}
