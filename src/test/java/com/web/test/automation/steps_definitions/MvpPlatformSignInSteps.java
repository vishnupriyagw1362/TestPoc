package com.web.test.automation.steps_definitions;

import com.web.test.automation.screens.MvpPlatformSignInScreen;

import io.cucumber.java.en.*;

public class MvpPlatformSignInSteps {
	
	MvpPlatformSignInScreen page = new MvpPlatformSignInScreen();
	
	@Given("user is in the mvp90 application")
	public void user_is_in_the_mvp90_application() throws InterruptedException {
	    page.userIsInMvp90App();
	}

	@When("user enters valid email")
	public void user_enters_valid_email() {
		page.enterValidEmail();
	}

	@When("user enters valid password")
	public void user_enters_valid_password() {
	    page.entersValidPassword();
	}

	@When("user clicks on signin button")
	public void user_clicks_on_signin_button() {
	    page.clickSignInBtn();
	}
	
	@Then("user should able to see home page")
	public void user_should_able_to_see_home_page() {
	    page.homePage();
	}
	


}
