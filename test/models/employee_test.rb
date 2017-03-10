require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  def setup
    @employee = Employee.new(first_name: 'firstname', last_name: 'lastname', email: 'user@example.com')
  end

  test "should be valid" do
    assert @employee.valid?
  end

  test "first_name should be present" do
    @employee.first_name = ''
    assert_not @employee.valid?
  end

  test "last_name should be present" do
    @employee.last_name = '   '
    assert_not @employee.valid?
  end

  test "email should be present" do
    @employee.email = ''
    assert_not @employee.valid?
  end
end
