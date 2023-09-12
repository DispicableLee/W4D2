class Employee

    attr_accessor :name, :title, :salary, :boss

    def initialize(name, title, salary, boss = nil)
        @name = name 
        @title = title 
        @salary = salary 
        @boss = boss
        @
    end 

    def bonus(multiplier)
        if self.
            @salary += @salary * multiplier
        else 
            salary_before_multiplier = self.summed_salaries
            salary_before_multiplier * multiplier
            #sum = 0 
            # if employee != manager, sum += employee.salary to sum 
                #if it is a manager, sum + = (manager.bonus) / multiplier (add its employees salary and multiply by multiplier) 
        end 
    end 

    def boss=(new_boss)
        if @boss != nil 
            @boss.managed_employees.delete(self)
        end 
        if new_boss.nil? 
            @boss = nil 
        else 
            @boss = new_boss
            new_boss.managed_employees << self unless new_boss.managed_employees.include?(self)
        end 

    end 

    def summed_salaries
        current_salary = self.salary 
        managed_employees.each do |employee|
            if employee.managed_employees.nil? 
                current_salary += employee.salary 
            else 
                current_salary += employee.summed_salaries
            end 
        end 
        current_salary
    end 


end 


e = Employee.new("Eltion", "chef", "1000000")
a = Employee.new("Rob", "waiter", "78000", e)
b = Employee.new("Bob", "busboy", "12,000", a)
c = Employee.new("Jack", "waiter", "10,000", a)

p a.boss

p e.bonus(5)
