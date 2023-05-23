class Manager < Employee
  def initialize(name, title, salary, boss, employees)
    super(name, title, salary, boss)
    @employees = employees
  end

  def bonus(multiplier)
    total_salary = employees.inject(0) { |acc, employee| acc + employee.salary }
    total_salary * multiplier
  end
end


