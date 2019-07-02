class Manager
    attr_accessor :department, :age
    attr_reader :name, :employees

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []
        @@all << self
    end

    def hire_employee(name, salary)
        employee = Employee.all.find do |employee|
            employee.name == name && employee.salary == salary
        end
        @employees << employee
        employee.manager = self
    end

    def Manager.all
        @@all
    end

    def Manager.all_departments
        @@all.map do |manager|
            manager.department
        end
    end

    def Manager.average_age
        sum = 0.0
        count = 0.0
        @@all.each do |manager|
            sum += manager.age
            count += 1
        end
        sum / count
    end

end
