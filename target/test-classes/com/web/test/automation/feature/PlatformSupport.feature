@Platform @PSupport
Feature: To verify the support verification

  Background: 
    Given user is in the mvp90 application
    When user enters valid email
    And user enters valid password
    And user clicks on signin button
    Then user should able to see home page

  @ConsumerSupportEditTikt @happyFlow
  Scenario: Tc001 verify the edit functionality of the consumer support in all tab
    When user clicks on support button
    And user clicks on consumer button
    Then user should able to see consumer support page
    When user counts total tickets how many assigned and unassigned
    And user clicks on ticket and status of the ticket
    Then user should able to see the ticket id
    When user edits the ticket details
    And user clicks on save button
    Then user should able to see ticket updated successfully

  @assgned @happyFlow
  Scenario: Tc002 verify the functionality of the assigned tickets
    When user clicks on support button
    And user clicks on consumer button
    Then user should able to see consumer support page
    When user clicks on assigned button
    Then user should able to see how many assigned tickets

  @Unassgned @happyFlow
  Scenario: Tc003 verify the functionality of the assigned tickets
    When user clicks on support button
    And user clicks on consumer button
    Then user should able to see consumer support page
    When user clicks on unassigned button
    Then user should able to see how many unassigned tickets

  #@TenantSupportEditTikt parked
  #Scenario: Tc004 verify the edit functionality of the tenant support ticket
  #When user clicks on support button
  #And user clicks on tenant button
  #Then user should able to see tenant support page
  #And user should able to see all the tickets
  
  @ResolvedUnresolved @happyFlow
  Scenario: Tc005 verify the resolved and unresolved functionality of the tenant support ticket
    When user clicks on support button
    And user clicks on tenant button
    Then user should able to see tenant support page
    When user clicks on resolved button
    Then user should able to see only resolved tickets
    When user clicks on unresolved button
    Then user should able to see only unresolved tickets

  @tenantsDrpDwn @happyFlow
  Scenario: Tc006 Verify the tenants drop down and check the related tickets
    When user clicks on support button
    And user clicks on tenant button
    Then user should able to see tenant support page
    When user clicks on tenanst drop down and selects one of the tenant
    Then user should able to see all the tickets
    When user clicks on resolved button
    Then user should able to see only resolved tickets
    When user clicks on unresolved button
    Then user should able to see only unresolved tickets

  @AddTicket @happyFlow
  Scenario: Tc007 verify the add functionality of the ticket in the support
    When user clicks on support button
    And user clicks on tenant button
    Then user should able to see tenant support page
    When user clicks on add button of tenants page
    Then user should able to create issue modal 
    When user fills the details of the issue 
    Then user should able to see Ticket Created Successfully message
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
