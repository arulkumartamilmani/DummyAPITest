require_relative '../../features/spec/spec_helper'
require 'json'

# Variables
api = DummyV1_api.new()
$response # response
$e_id # employee id
$ares # actual result

#Test Data & Expected Result
$employee_name = 'ArulKumarT'
$employee_salary = '9000000'
$employee_age = '25'
$delete_eres = 'successfully! deleted Records'

Given("create employee endpoint is working") do
  api.create_employeeapicheck
end

When("POST request with following parameters") do
  $response= api.create_employee($employee_name, $employee_salary, $employee_age)
  puts "Employee ID:" +$e_id = JSON.parse($response.body)['id']
end

Then("validate the response to confirm employee creation") do
  api.validate_employee_creation($response, $employee_name,$employee_salary,$employee_age)
end

Given("delete employee endpoint is working") do
  api.delete_employeeapicheck
end

When("DELETE request with following parameter") do
  $response = api.delete_employee($e_id)
  puts 'Employee ID:'+ $e_id + " "+ $ares = JSON.parse($response.body)['success']['text']
end

Then("validate the response to confirm employee is deleted") do
  api.validate_employee_deletion($ares,$delete_eres)
end
