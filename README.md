# DummyAPITest

----------------
TEST FRAMEWORK
----------------

Cucumber based framework using Ruby for API automation tests.

The following are the directory levels & Files

AutomationAPI/features/employee.feature     - **Gherkin document** <br />
AutomationAPI/features/step_defenition/     - **Ruby based scripts for Automation**<br />
AutomationAPI/features/api/                 - **Ruby scripts with API calls to interact with DummyAPI**<br />
AutomationAPI/features/spec/spec_helper.rb  - **Helper file pointing to the API file**<br />
AutomationAPI/cucumber.yml                  - **Profile and Test result folder configuration**<br />
AutomationAPI/features_report.html          - **Test Result file** <br />

DEPENDENCIES
------------
1) ruby 2.6.4p104
2) cucumber 3.1.2
3) httparty-0.17.1 (Ruby based Gem)

Run
--------------
The tests can be executed as a cucumber test  
C:/>cd AutomationAPI <br />
C:/AutomationAPI>cucumber --profile html_report<br />

Test Framework OPERATIONAL MANUAL
---------------------------------
1. Execute Cucumber feature tests  as shown above in Run 
2. On completion of the tests execution, feature_report.html will test reports
