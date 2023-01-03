@todoly
Feature: Login

    Feature Description

    Scenario: Succesfull login with an existing user 

    Given user enters main page
    #And user "fhr1@fhr1.com" exists on database  --> Query the DB maybe? (local?)
    #And user "fhr1@fhr1.com" has its account active --> ?

    When user clicks on [Login] button on todo.ly main page
    And types 'fhr1@fhr1.com' in [Email] textbox  
    And types '12345' in [Password] textbox  
    And clicks [Login] button on Login modal

    Then [Logout] button should be displayed on the top right of the page