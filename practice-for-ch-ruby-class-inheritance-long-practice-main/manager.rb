require_relative "employee"

class Manager < Employee
    attr_accessor :name, :title, :salary, :boss, :managed_employees

    def initialize(name, title, salary, boss=nil, managed_employees=[])
        super(name, title, salary, boss)
        @managed_employees = managed_employees
    end 


    def manager_bonus(multiplier=1)
        temp = 0
        self.managed_employees.each do |employee|
            if employee.managed_employees.empty?
                temp += employee.bonus
            else
                temp+= (employee.manager_bonus(multiplier)/multiplier)
            end
        end
        temp*multiplier + @salary
    end



end 

e = Manager.new("Eltion", "chef", 1000000)

a = Manager.new("Rob", "waiter", 78000,e)
b = Manager.new("Bob", "busboy", 12000,a)
c = Manager.new("Jack", "waiter", 10000,a)






p e.managed_employees