Feature: Banking
  As a user
  I want to use a ATM Trasanction
    
    @requirementKey=WAT-RQ-35
    Scenario: Withdraw less money
    Given I have $1200 on my account
    When I withdraw $500
    Then I get $500 from the ATM
    
    @requirementKey=WAT-RQ-35
    Scenario: Withdraw more money
 	Given I have $150 on my account
	When I withdraw $150
	Then I get $150 from the ATM
    
    @requirementKey=WAT-RQ-35
	Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 200 | 150 | 100 |