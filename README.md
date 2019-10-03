# DummyAPITest

----------------
TEST FRAMEWORK
----------------

Cucumber based framework using Ruby for API automation tests.

The following are the directory levels & Files

AutomationAPI/features/employee.feature 	Gherkin document			
AutomationAPI/features/step_defenition/		Ruby based scripts for Automation 
AutomationAPI/features/api/					Ruby scripts with API calls to interact with DummyAPI	
AutomationAPI/cucumber.yml					Profile and Test result folder configuration
AutomationAPI/features_report.html			Test Result file 

DEPENDENCIES
------------
1) ruby 2.6.4p104
2) cucumber 3.1.2
3) httparty-0.17.1 (Ruby based Gem)

Run
--------------
The tests can be executed as a cucumber test  
C:/>cd AutomationAPI
C:/>cucumber --profile html_report

Test Framework OPERATIONAL MANUAL
---------------------------------
1. Execute Cucumber feature tests  as shown above in Run 
2. On completion of the tests execution, feature_report.html will test reports