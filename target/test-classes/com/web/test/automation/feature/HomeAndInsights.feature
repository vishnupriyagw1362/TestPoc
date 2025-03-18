@MVP @Platform @HomeInsights
Feature: Verify the functionality of the home and insights

  Background: 
    Given user is in the mvp90 application
    When user enters valid email
    And user enters valid password
    And user clicks on signin button
    Then user should able to see home page

  @Home @happyFlow
  Scenario: Tc001 Verify the functionality of home
   Then user validates the soem fields present or not
   
   @Insights @happyFlow
   Scenario: Tc002 Verify the functionality of the insights
   When user clicks on insights on the left side menu
   Then user should able to see insights page 
   When user clicks on notification arrow mark under the users
   Then user should able to see users/notifications page and validates the events present 
   When user clicks on back button
   And user clicks on login arrow mark under the users
   Then user should able to see users/login page and validates the events present
   When user clicks on back button
   And user clicks on otp arrow mark under the users
   Then user should able to see users/otp page and validates the events present
   When user clicks on back button
   And user clicks on subscription arrow mark under the Financials
   Then user should able to see subscription/Financials page and validates the events present
   When user clicks on back button
   And user clicks on orders arrow mark under the sales
   Then user should able to see orders/sales page and validates the events present
   When user clicks on back button
   And user clicks on products arrow mark under the products
   Then user should able to see products/products page and validates the events present
   
   
   
