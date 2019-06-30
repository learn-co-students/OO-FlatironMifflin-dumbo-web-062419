require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

#Employee.new(name, salary, department)
#Manager.new(name, department)
oscar = Manager.new("Oscar", "Finance")
oscar.age = 34
jim = Manager.new("Jim", "Sales")
jim.age = 30
toby = Manager.new("Toby", "Human Resources")
toby.age = 39


angela = oscar.hire_employee("Angela", 60000)
kevin = oscar.hire_employee("Kevin", 55000)
pam = jim.hire_employee("Pam", 54500)
kelly = toby.hire_employee("Kelly", 45000)
gabe = toby.hire_employee("Gabe", 70000)




binding.pry
puts "done"
