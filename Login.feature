Feature: Facebook Login Functionality1
User should successfully login into their registered account


#Positive Scenarios

Scenario: Login with valid email and password

Given User enters into the Facebook login page
When User enters valid email "anushri123@gmail.com"
And User enters valid password "juytr_1256^&"
And User clicks login button
Then User should successfully logged into their account

Scenario: Login with valid phonenumber and password

Given User enters into the Facebook login page
When User enters valid phonenumber "9865878956"
And User enters valid password "juytr_1256^&"
And User clicks login button
Then User should successfully logged into their account

#Negative Scenarios

Scenario: Login with invalid email and password

Given User enters into the Facebook login page
When User enters invalid email "aannnnushri123@gmail.com"
And User enters invalid password "jjjjuuuytr_1256^&"
And User clicks login button
Then User should see appropriate error message 

Scenario: Login with invalid phonenumber and password
Given User enters into the Facebook login page
When User enters invalid phonenumber "9888886587"
And User enters invalid password "jjjjuuuytr_1256^&"
And User clicks login button
Then User should see appropriate error message 

Scenario: Login with valid email and invalid password

Given User enters into the Facebook login page
When User enters valid email "anushri123@gmail.com"
And User enters invalid password "jjjjuuuytr_1256^&"
And User clicks login button
Then User should see appropriate error message


Scenario: Login with invalid email and valid password

Given User enters into the Facebook login page
When User enters invalid email "aannnnushri123@gmail.com"
And User enters valid password "juytr_1256^&"
And User clicks login button
Then User should see appropriate error message


Scenario: Login with valid phonenumber and invalid password

Given User enters into the Facebook login page
When User enters valid phonenumber "9865878956"  
And User enters invalid password "jjjjuuuytr_1256^&"
And User clicks login button
Then User should see appropriate error message


Scenario: Login with invalid phonenumber and valid password

Given: User enters into the Facebook login page
When User enters invalid phonenumber "9888886587"
And User enters valid password "juytr_1256^&"
And User clicks login button
Then User should see appropriate error message


Scenario: Login without entering any credentials

Given User enters into the Facebook login page
When User leave email or phonenumber and password fields empty
And User clicks login button
Then User should see appropriate error message

#Formats 

Scenario: Login with invalid email format

Given User enters into the Facebook login page
When User enters email in invalid format "anush ri123@gmailcom" 
And User enters valid password "juytr_1256^&"
And User clicks login button
Then User should see appropriate error message 

Scenario: Login with invalid password format

Given User enters into the Facebook login page
When User enters valid email "anushri123@gmail.com" 
And User enters password in invalid format "12y"
And User clicks login button
Then User should see appropriate error message "The password that you've entered is incorrect."

#Sessions & Security

#Scenario: Account gets locked after multiple invalid credential attempts

#Given User enters into the Facebook login page
#When User try to enter with invalid credentials for 5th time 
#When User clicks the login button
#Then User should see a message "You have tried too many times. Please try again later."

#Scenario: Session timeout occurs for inactivity

#Given User after entering into the Facebook account page
#When User is inactive for 30 minutes
#Then User should automatically logged out 
#And After refresh user should see login page

#Scenario: Login with Sql injection in the email field

#Given User enters into the Facebook login page
#When User enters sql injection in email field ' OR '1'=1'
#And User enters valid password "juytr_1256^&"
#And User clicks the login button
#Then User should see an error message

#Navigation in login page

Scenario: Navigate from login page to Forgotten password page

Given User enters into the Facebook login page
When User clicks the Forgotten password? link
Then User should redirect to the password recovery page

Scenario: Navigate from login page to create a new account page

Given User enters into the Facebook login page
When User clicks the Create new account button
Then User should redirect to the signup form page


