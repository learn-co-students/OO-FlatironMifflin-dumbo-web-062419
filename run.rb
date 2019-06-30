require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

manager1 = Manager.new("zunith", "food", 23)
manager2 = Manager.new("bellami", "marketing", 30)

#Test your code here
employee1 = Employee.new("bill", 50000, manager1)
employee2 = Employee.new("will", 49000, manager1)
employee3 = Employee.new("gil", 51000, manager1)
employee4 = Employee.new("jill", 34000, manager1)
employee5 = Employee.new("dill", 100000, manager2)
employee6 = Employee.new("phill", 75000, manager2)

man1emp = manager1.employees
man2emp = manager2.employees
# Manager.all

# Manager#hire_employee
manager1.hire_employee("jilly frm philly", 28000)
# Manager.all_departments
all_deps = Manager.all_departments
# Manager.average_age
avg_age = Manager.average_age
man_name3 = employee3.manager_name
# Employee.all
# Employee.paid_over
paid_over = Employee.paid_over(49000)
# Employee.find_by_department
find_dep = Employee.find_by_department("marketing")
# Employee#tax_bracket
tax_b = employee1.tax_bracket


binding.pry
puts "done"
