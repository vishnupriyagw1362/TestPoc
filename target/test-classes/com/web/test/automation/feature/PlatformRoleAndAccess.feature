@Platform @PRoleAccess
Feature: verify the role and access module

  Background: 
    Given user is in the mvp90 application
    When user enters valid email
    And user enters valid password
    And user clicks on signin button
    Then user should able to see home page

  #@AddRole #parked
  #Scenario: Tc001 verify the add role functionality of roles and access in platform admin
  #When user clicks on role and access button
  #Then user should able to see role and access page
  #When user clicks on add button of tenants page
  #Then user should able to add user modal
  
  #@AddUserRoleAccess parked
  #Scenario: Tc002 verify the add user functionality of the role and access module
    #When user clicks on role and access button
    #Then user should able to see role and access page
    #When user clicks on user button
    #When user clicks on add button of tenants page
    #Then user should able to create user modal
    #When user fills user details in the create user
    #Then user should able to see User created successfully message