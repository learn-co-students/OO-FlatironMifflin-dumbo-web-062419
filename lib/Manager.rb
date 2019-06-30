class Manager

  attr_accessor :name, :department, :age, :employees
  @@all = []

  def initialize(name, department)
    @name = name
    @department = department
    @age = age
    @employees = []
    @@all << self
  end

  def hire_employee(name, salary)
    new_guy = Employee.new(name, salary, self.department)
    @employees << new_guy
    new_guy
  end

  def self.all
    @@all
  end

  def self.all_departments
    self.all.map do |manager|
      manager.department
    end
  end

  def self.average_age
    age_sum = 0
    @@all.each do |manager|
      age_sum += manager.age
    end
    age_sum/@@all.length
  end

  def employees
    Employee.all.select do |employee|
      employee.department == self.department
    end
  end

end
