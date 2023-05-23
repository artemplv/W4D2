require_relative "Employee"
require_relative "Manager"

david = Employee.new("david", "TA", 10000)
shawna = Employee.new("shawna", "TA", 12000)

darren = Manager.new('darren', 'TA Manager', 78000)
ned = Manager.new('ned', 'founder', 1000000)

ned.addEmployee(darren)
ned.addEmployee(shawna)
ned.addEmployee(david)

darren.addEmployee(shawna)
darren.addEmployee(david)

p ned.bonus(5)
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000