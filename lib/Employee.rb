class Employee

  attr_accessor :name, :salary, :department
  @@all = []

  def initialize(name, salary, department)
    @name = name
    @salary = salary
    @department = department
    @@all << self
  end

  def self.all
    @@all
  end

  def manager_name
    Manager.all.find do |manager|
      if manager.department == self.department
        return manager.name
      end
    end
  end

  def self.paid_over(number)
    @@all.select do |employee|
      if employee.salary > number
        employee
      end
    end
  end

  def tax_bracket
    Employee.all.select do |employee|
      if employee.salary < (@salary+1001) && employee.salary > (@salary-1001)
        if employee != self
          employee
        end
      end
    end
  end

  def self.find_by_department(department)
    Manager.all.find do |manager|
      if manager.department == department
        return manager.employees.first
      end
    end
  end

end
