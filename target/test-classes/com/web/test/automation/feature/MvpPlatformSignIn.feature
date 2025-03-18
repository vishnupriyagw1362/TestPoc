@MVP @Platform @PSignIn
Feature: Verify the functionality of the signin of the platform adimn

  @FunEmailField
  Scenario: Tc001 Verify the functionality of email field
    Given user is in the mvp90 application
    When user enters the character set in the email field
    Then user should able to see entered characters in email field

  @FunPasswordField
  Scenario: Tc002 Verify the functionality of password field
    Given user is in the mvp90 application
    When user enters the character set in the password field
    Then user should able to see hided password
    When user clicks on eye button
    Then user should able to see entered characters in password field

  @FunClickSignInBtn
  Scenario: Tc003 Verify the signin button clicking functionality
    Given user is in the mvp90 application
    When user enters the character set in the email field
    And user enters the character set in the password field
    Then user should able to see signin button is clickable

  @InvalidCrenEmail
  Scenario Outline: Verify the functionality of the signin with invalid email
    Given user is in the mvp90 application
    When user enters invalid email <invalidemail> in platform email field
    And user enters valid password
    And user clicks on signin button
    Then user should able to see invalid email error message

    Examples: 
      | invalidemail     |
      | afsdfsdgsd@gmail |
      | safsasfs@yp      |

  @InvalidCrenPasswd
  Scenario Outline: Verify the functionality of the signin with invalid password
    Given user is in the mvp90 application
    When user enters valid email
    And user enters invalid password <invalidpwd> in platform password field
    And user clicks on signin button
    Then user should able to see invalid password error message

    Examples: 
      | invalidpwd |
      | gmail      |
      |       1234 |

  @WrongCreden
  Scenario Outline: Verify the functionality of the signin with wrong credentials
    Given user is in the mvp90 application
    When user enters wrong email <invalidemail> in platform email field
    And user enters wrong password <invalidpwd> in platform password field
    And user clicks on signin button
    Then user should able to see respective error message

    Examples: 
      | invalidemail           | invalidpwd |
      | platfn@mail.com        |   12345678 |
      | platformadmin@mail.com | 12345sdada |

  @PosPlatLogin @happyFlow
  Scenario: Tc007 Verify the login functionality with valid credentials
    Given user is in the mvp90 application
    When user enters valid email
    And user enters valid password
    And user clicks on signin button
    Then user should able to see home page

  @EmptyFields
  Scenario Outline: Verify the functionality of login with empty fields
    Given user is in the mvp90 application
    When user enters empty email "<invalidemail>" in platform email field
    And user enters empty password "<invalidpwd>" in platform password field
    And user clicks on signin button
    Then user should able to see respective empty error message

    Examples: 
      | invalidemail           | invalidpwd |
      |                        |            |
      | platformadmin@mail.com |            |
      |                        |   12345678 |
      
      @RedirectingRegisterPageForgotPwdPage @happyFlow
      Scenario: Tc009 Verify the navigation of signup page and forgot password page
      Given user is in the mvp90 application
      When user clicks on register button
      Then user should able to see register page
      When user clicks on signin link
      And user clicks on forgot password button
      Then user should able to see forgot password page
      
      
      
      
      
      
