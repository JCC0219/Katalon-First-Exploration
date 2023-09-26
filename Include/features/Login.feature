Feature: Test login functionality

#the sign <> is used to parameterize the values from the data table below (examples)#
#the sign @ is used as tags to be called in test case file#

	@scenario1
  Scenario Outline: Check login is successful with valid credentials
    Given user is on login page
    When user enters <username> and <password>
    And clicks on login button
    Then user is navigated to the home page

	@valid
	 Examples:
    | username | password |
    | Admin		 | hUKwJTbofgPU9eVlw/CnDQ== |
    
  @invalid
   Examples:
    | username | password |
    | Admin123 | hUKwJTbofgPU9eVlw/CnDQ== |