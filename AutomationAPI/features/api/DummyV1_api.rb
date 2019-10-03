require 'httparty'
require 'json'
require 'test/unit/assertions'

class DummyV1_api
  include HTTParty
  include Test::Unit::Assertions

  #Create Employee API Check
  def create_employeeapicheck()
    response = HTTParty.get('http://dummy.restapiexample.com/create')
    assert_equal(200,response.code)
  end

  #Create Employee API
  def create_employee(emp_name, emp_salary,  emp_age)
    response = HTTParty.post('http://dummy.restapiexample.com/api/v1/create', body:{name: emp_name, salary: emp_salary, age: emp_age}.to_json)
    rid = JSON.parse(response.body)['id']
    assert_not_empty(rid,"Employee not created")
    return response
  end

  #Delete Employee API Check
  def delete_employeeapicheck()
    response = HTTParty.get('http://dummy.restapiexample.com/delete')
    assert_equal(200, response.code)
  end

  #Delete Employee API
  def delete_employee(emp_id)
    assert_not_empty(emp_id,'Employee id variable empty')
    response = HTTParty.delete('http://dummy.restapiexample.com/api/v1/delete/'+emp_id)
    return response
  end

  #Validate Create Employee API response
  def validate_employee_creation(res, emp_name,emp_salary,emp_age)
    a_emp_name = JSON.parse(res.body)['name']
    a_emp_salary = JSON.parse(res.body)['salary']
    a_emp_age = JSON.parse(res.body)['age']
    assert_equal(emp_name, a_emp_name)
    assert_equal(emp_salary, a_emp_salary)
    assert_equal(emp_age, a_emp_age)
  end

  #Validate Delete Employee API response
  def validate_employee_deletion(a_res, e_res)
    assert_equal(e_res, a_res)
  end
end
