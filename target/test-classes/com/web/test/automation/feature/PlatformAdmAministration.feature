@MVP @Platform @HomeInsights
Feature: Verify the functionality of the administration of the platform admin

  Background: 
    Given user is in the mvp90 application
    When user enters valid email
    And user enters valid password
    And user clicks on signin button
    Then user should able to see home page

  @TenantsSearchPositive @happyFlow
  Scenario: Tc001 Verify the search functionality of the tenants in platform admin
    When user clicks on administration button
    And user enters valid search input in the search field
    Then user should able to see searched outcome

  @nonExistingTenant
  Scenario Outline: Verify the search functionality of the tenants in platform admin with non existing tenants
    When user clicks on administration button
    And user enters non existing <nonExisting> search input in the search field
    Then user should able to see No tenants available message

    Examples: 
      | nonExisting |
      | @#$%^&      |
      | fhfhghgjh   |

  @addTenant @happyFlow
  Scenario: Tc003 Verify the functionality of creating a new tenant
    When user clicks on administration button
    Then user should able to see tenants page
    When user clicks on add button of tenants page
    Then user should able to see add new talent modal
    When user enters longname and shortname
    And user enters email and description
    And user clicks on create button
    Then user should able to see tenant created successfully

  @EmptyFeilds
  Scenario: Tc004 Verify the functionality of creating a new tenant with empty fields and verifies the respective error messages
    When user clicks on administration button
    Then user should able to see tenants page
    When user clicks on add button of tenants page
    And user clicks on create button
    Then user should able to see respective error messages for empty tenant detail fields

  @ViewDetailsEdit @happyFlow
  Scenario: Tc005 Verify the edit functionality of the view details of any one of tenant
    When user clicks on administration button
    Then user should able to see tenants page
    When user clicks on menu icon of the one of the tenant and clicks on view details
    Then user should able to see one of tenants page
    When user clicks on edit icon on the right side
    And user edit the details of the tenant
    And user clicks on save button
    Then user should able to see updated tenant successfully message

  @CommunicationChannel @happyFlow
  Scenario: Tc006 Verify the functionality of the channels in communication channel
    When user clicks on administration button
    Then user should able to see tenants page
    When user clicks on menu icon of the one of the tenant and clicks on view details
    Then user should able to see one of tenants page
    When user clicks on communication channel
    And user verifies the how the channel are appearing in the dropdown when toggling the channels

  @CreateEmailTemplateEdit @happyFlow
  Scenario: Tc007 Verify the functionality of the creation of email template
    When user clicks on administration button
    Then user should able to see tenants page
    When user clicks on menu icon of the one of the tenant and clicks on view details
    Then user should able to see one of tenants page
    When user clicks on communication channel
    And user selects email, selects category and uploads document
    And user clicks on tick mark
    Then user should able to see template created successfully
    And user clicks on edit of the template
    And user selects another category
    And user clicks on tick mark of the edit template
    Then user should able to see template created successfully1
    When user clicks on delete icon of the template
    Then user should able to see template deleted successfully

  @CreatePushTemplate @happyFlow
  Scenario: Tc008 Verify the functionality of the creation of email template
    When user clicks on administration button
    Then user should able to see tenants page
    When user clicks on menu icon of the one of the tenant and clicks on view details
    Then user should able to see one of tenants page
    When user clicks on communication channel
    And user selects push, selects category and uploads document
    And user clicks on tick mark
    Then user should able to see template created successfully

  @FeatureManagement @happyFlow
  Scenario: Tc010 Verify the functionality of the creation of email template
    When user clicks on administration button
    Then user should able to see tenants page
    When user clicks on menu icon of the one of the tenant and clicks on view details
    Then user should able to see one of tenants page
    When user clicks on feature management
    And user clicks on edit icon on the right side of the feature management
    And user edits the feature managements features
    And user clicks on save button

  @SearchFun @happyFlow
  Scenario: Tc011 Verify the search functionality of the add user in user details of tenant
    When user clicks on administration button
    Then user should able to see tenants page
    When user clicks on menu icon of the one of the tenant and clicks on user details
    Then user should able to see one of tenants page of user details
    When user enters the valid search input in the search field
    Then user should able to see searched user

  @FilterFun @happyFlow
  Scenario: Tc012 Verify the filter functionality of the user details in tenants
    When user clicks on administration button
    Then user should able to see tenants page
    When user clicks on menu icon of the one of the tenant and clicks on user details
    And user clicks on filter icon
    Then user should able to see status modal
    When user clicks on active radio button
    And user clicks on apply filters button
    Then user should able to see only active users
    When user clicks on cancel filters button
    And user clicks on filter icon
    And user clicks on blocked radio button
    And user clicks on apply filters button
    Then user should able to see only blocked users
    When user clicks on cancel filters button
    And user clicks on filter icon
    And user clicks on all radio button
    And user clicks on apply filters button
    Then user should able to see all users both active and blocked

  @AddTenantUser @happyFlow
  Scenario: Tc013 verify the functionality of the add user in tenants in the user details
    When user clicks on administration button
    Then user should able to see tenants page
    When user clicks on menu icon of the one of the tenant and clicks on user details
    And user clicks on add user icon on the right side
    Then user should able to see add user modal
    When user enters the user details in the modal
    And user clicks on add button of the user details modal
    Then user should able to see user added successfully

  @EditUserinUserDetails @happyFlow
  Scenario: Tc014 Verify the edit functionality of the user in user details in the user details
    When user clicks on administration button
    Then user should able to see tenants page
    When user clicks on menu icon of the one of the tenant and clicks on user details
    And user clicks on one of the user in the user details
    And user clicks on edit icon of the user on the right side
    And user edits the user in the user details
    And user clicks on save button
    Then user should able to see updated user successfully message

  @AllUsersSearchFunc @happyFlow
  Scenario: Tc015 Verify the search functionality of the all users
    When user clicks on administration button
    And user clicks on all users button
    Then user should able to see all users page
    When user enters the valid search input in the search field
    Then user should able to see searched user

  @AllUsersFilterFun @happyFlow
  Scenario: Tc016 Verify the filter functionality of the user details in tenants
    When user clicks on administration button
    And user clicks on all users button
    Then user should able to see all users page
    When user clicks on filter icon of the all users page
    And user clicks on tenants drop down and pick one of the tenants
    And user clicks on active radio button
    And user clicks on apply filters button
    Then user should able to see only active users
    When user clicks on cancel filters button
    And user clicks on filter icon of the all users page
    And user clicks on tenants drop down and pick one of the tenants
    And user clicks on blocked radio button
    And user clicks on apply filters button
    Then user should able to see only blocked users
    When user clicks on cancel filters button
    And user clicks on filter icon of the all users page
    And user clicks on tenants drop down and pick one of the tenants
    And user clicks on all radio button
    And user clicks on apply filters button
    Then user should able to see all users both active and blocked
    
    
    @AllUsersAddTenantUser @happyFlow
  Scenario: Tc017 verify the functionality of the add user in tenants in the user details
    When user clicks on administration button
    And user clicks on all users button
    Then user should able to see all users page
    And user clicks on add user icon on the right side
    Then user should able to see add user modal
    When user enters the user details in the modal for all users
    And user clicks on add button of the user details modal
    Then user should able to see user created successfully by admin
    
    
    @AllUsersEditUser @happyFlow
  Scenario: Tc018 Verify the edit functionality of the user in user details in the user details
    When user clicks on administration button
    And user clicks on all users button
    Then user should able to see all users page
    When user clicks on filter icon of the all users page
    And user clicks on tenants drop down and pick one of the tenants
    And user clicks on all radio button
    And user clicks on apply filters button
    And user clicks on one of the user in the user details
    And user clicks on edit icon of the user on the right side
    And user edits the user in the user details
    And user clicks on save button
    Then user should able to see updated user successfully message
    
    
