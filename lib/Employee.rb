class Employee
    attr_accessor :manager
    attr_reader :name, :salary

    @@all = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        @@all << self
    end

    def manager_name
        @manager.name
    end

    def tax_bracket
        @@all.select do |employee|
            employee.salary < self.salary + 1000 || employee.salary > self.salary - 1000
        end
    end

    def Employee.all
        @@all
    end

    def Employee.paid_over(amount)
        @@all.select do |employee|
            employee.salary > amount
        end
    end

    def Employee.find_by_department(dept_name)
        @@all.find do |employee|
            employee.manager.department == dept_name
        end
    end

end
