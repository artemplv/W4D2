class Manager < Employee
  attr_reader :employees
  
  def initialize(name, title, salary)
    super(name, title, salary)
    @employees = []
  end

  def bonus(multiplier)
    total_salary = employees.inject(0) { |acc, employee| acc + employee.salary }
    total_salary * multiplier
  end

  def addEmployee(emp)
    @employees << emp
    emp.boss = self
  end
end
