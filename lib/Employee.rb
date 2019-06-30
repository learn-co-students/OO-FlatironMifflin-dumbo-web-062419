class Employee

	attr_accessor :name, :salary, :manager

	@@all = []

	def initialize(name, salary, manager = nil)
		@name = name
		@salary = salary
		@manager = manager
		@@all << self
	end

	def self.all
		# returns an Array of all the employees
		@@all
	end

	def self.paid_over(salary)
		# takes a Fixnum argument and returns an Array of all the employees whose salaries are over that amount
		self.all.select{|emp| emp.salary > salary}
	end

	def self.find_by_department(dep_name)
		# takes a String argument that is the name of a department and returns the first employee 
		# whose manager is working in that department
		self.all.select{|emp| emp.manager.department == dep_name}
	end

	def tax_bracket
		# returns an Array of all the employees whose salaries are within $1000 (± 1000) of 
		# the employee who invoked the method
		Employee.all.select{|emp| emp.salary >= self.salary - 1000 && emp.salary <= self.salary + 1000 && emp != self}
	end

	def manager_name
		self.manager.name
	end
end
