*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/PageObjects/LoginPage.robot
Resource  ../../Resources/CommonFunctionality.robot

Test Setup  Start TestCase
Test Teardown  Finish TestCase

*** Test Cases ***
TC Succesfully Log in
    [documentation]  This Login attempt should Pass
    [tags]  Should_Pass

    LoginPage.Input Email and Password and Login

TC Login Fails - Incorrect Password
    [documentation]  This Login attempt should Fail
    [tags]  Should_Fail

    LoginPage.Correct Email and Incorrect Password  testpassword

TC Login Fails - Incorrect Email and Correct Password
    [documentation]  This Login attempt should Fail. Account Doesnt Exist
    [tags]  Should_Fail

    LoginPage.Incorrect Email and Correct Password  wrong@gmail.com

TC Login Fails - Incorrect Email Format and Correct Password
    [documentation]  This Login attempt should Fail. Incorrect email format
    [tags]  Should_Fail

    LoginPAge.Incorrect Email Format and Correct Password  wrongformat


