require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

manager1 = Manager.new("Bob", "Marketing", 28)
manager2 = Manager.new("Abby", "Finance", 24)
employee1 = Employee.new("John", 1600)
employee2 = Employee.new("Will", 1890)
manager1.hire_employee("John", 1600)
manager1.hire_employee("Will", 1890)



binding.pry
puts "done"
