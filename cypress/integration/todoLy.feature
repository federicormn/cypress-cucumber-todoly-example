Feature: Register/Login for Todo.ly

#################################################

Scenario: Register a new account with valid fields

Given user enters http://todo.ly/
And user "asf" doesnt exist in DB

When user clicks [Sign Up Free] button on "Main Page"
And types [Full name] textbox with a string
And types [Email] textbox with a valid format email address ("string@email.com")
And types [Password] with valid data (at least 1 character - NO restrictions)
And checks [Terms of Service] checkbox
And clicks [Sign Up] button on Signup modal
 
Then account should be created with entered values and stored in the database
And todo.ly home page should be displayed
And [Logout] button should be displayed on the top right of the page

#################################################

Scenario: Succesfull login with an existing user 

Given user enters http://todo.ly/
And user "fhr1@fhr1.com" exists on database
And user "fhr1@fhr1.com" has its account active 

When user clicks on [Login] button on todo.ly main page
And types "fhr1@fhr1.com" in [Email] textbox  
And types "12345" in [Password] textbox  
And clicks [Login] button on Login modal

Then Todo.ly Home screen should be displayed
And [Logout] button should be displayed on the top right of the page

#################################################

Scenario: Log out from an active session

Given User is already logged in into http://todo.ly/ with an existing account

When user clicks [Logout] button on home page's top right

Then user should log out 
And Todo.ly main page should be displayed
And [Login] button should be displayed

#################################################

Scenario: Change Full Name for an existing account

Given User is already logged in into http://todo.ly/ with an existing account

When user clicks [Settings] button on home page's top right
And user types a string in [Full Name] textbox inside [Settings] modal
And user clicks [Ok] button inside [Settings] modal

Then [Settings] modal should disappear
And user's [Full Name] should be edited with the typed value

# Assertion?

#################################################

Scenario: Create a project inside an existing account

Given User is already logged in into http://todo.ly/ with an existing account

When user clicks [Add New Project] button on left side menu
And types "project_example" in [New Project Name Input] textbox
And clicks [Add] button

Then project should be created
And project should be displayed with "project_example" name on left side menu
And created project should be selected
And project's items menu should be displayed in the center of the page