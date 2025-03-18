@MVP @Platform @PSignUp
Feature: Verify the functionality of the signup in platfrom admin

  @PltfSignUp @happyFlow
  Scenario: Tc001 Verify the functionality of signup with valid credentials and verify otp page
    Given user is in the mvp90 application
    When user clicks on register button
    Then user should able to see register page
    When user enters first name and last name in the signup page
    And user enters the username and email in the signup page
    And user enters the password and check the password visibility
    And user clicks on the register button
    Then user should able to see otp page

  @emptyFields
  Scenario: Tc002 Verify the functionality of the signup with empty fields and validate error messages
    Given user is in the mvp90 application
    When user clicks on register button
    Then user should able to see register page
    When user clicks on the register button
    Then user should able to see respective empty error messages in signup page

  @InvalidValues
  Scenario: Tc003 Verify the functionality of the signup with invalid fields and validate error messages
    Given user is in the mvp90 application
    When user clicks on register button
    Then user should able to see register page
    When user enters invalid first name as "@#$%" and last name as "!@#%^"
    And user enters invalid username as "#$5678" and email as "hjjhj@gm" and password as "12344"
    And user clicks on the register button
    Then user should able to see respective invalid error messages in signup page

  @ExistingUsernameErrMsg
  Scenario: Tc004 Verify the functionality of the signup with existing username and validate error message
    Given user is in the mvp90 application
    When user clicks on register button
    Then user should able to see register page
    When user enters first name and last name in the signup page
    And user enters existing username as "username" and enters email
    And user enters the password and check the password visibility
    And user clicks on the register button
    Then user should able to see respective existing error message in signup

  @ExistingEmailErrMsg
  Scenario: Tc005 Verify the functionality of the signup with existing username and validate error message
    Given user is in the mvp90 application
    When user clicks on register button
    Then user should able to see register page
    When user enters first name and last name in the signup page
    And user enters username and enters existing email as "platformadmin@mail.com"
    And user enters the password and check the password visibility
    And user clicks on the register button
    Then user should able to see respective existing error message in signup

  @OtpInvalidWrng
  Scenario Outline: Verify the functionality of signup with <desc> otp
    Given user is in the mvp90 application
    When user clicks on register button
    Then user should able to see register page
    When user enters first name and last name in the signup page
    And user enters the username and email in the signup page
    And user enters the password and check the password visibility
    And user clicks on the register button
    Then user should able to see otp page
    When user enters invalid otp like <InvalidEmptOtp> in the otp input field
    And user clicks on verify otp button
    Then user should able to see respective otp error

    Examples: 
      | InvalidEmptOtp | desc                  |
      |           1234 | less than six numbers |
      |   123498493894 | more than six numbers |
      | sahjfsj        | characters            |
      |         777788 | wrong                 |

  @ForgotPwdInvalid
  Scenario Outline: Verify the functionality of forgot password with invalid email and non existing email
    Given user is in the mvp90 application
    And user clicks on forgot password button
    Then user should able to see forgot password page
    When user enters invalid and non existing email <Invemail> in the email field in forgot password
    And user clicks on request otp button
    Then user should able to see respective email errors

    Examples: 
      | Invemail         |
      | vishnu@gmail.com |
      | sjsj@gm          |
