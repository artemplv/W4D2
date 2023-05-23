class Employee
    attr_accessor :name, :title, :salary, :boss

    def initialize(name, title, salary)
        @name = name
        @title = title 
        @salary = salary
        @boss = nil
    end 

    def bonus(multiplier)
        return salary * multiplier
    end
end 