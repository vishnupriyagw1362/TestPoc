@MVP @Platform @PSignIn
Feature: Verify the functionality of the signin of the platform adimn

         
  @PosPlatLogin @happyFlow
  Scenario: Tc007 Verify the login functionality with valid credentials
    Given user is in the mvp90 application
    When user enters valid email
    And user enters valid password
    And user clicks on signin button
    Then user should able to see home page

        
      
      
      
      
      
