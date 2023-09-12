class Employee

    attr_accessor :name, :title, :salary, :boss, :managed_employees

    def initialize(name, title, salary, boss = nil)
        @name = name 
        @title = title 
        @salary = salary 
        @boss = boss
        @managed_employees = []
    end 

    def bonus(multiplier)
        p "hi"
        if self.managed_employees.empty?
            @salary += @salary * multiplier
        else 
            salary_before_multiplier = self.summed_salaries
            salary_before_multiplier * multiplier
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
            if employee.managed_employees.empty? 
                current_salary += employee.salary 
            else 
                current_salary += employee.summed_salaries - @salary
            end 
        end
        current_salary
    end 


end 


e = Employee.new("Eltion", "chef", 1000000)
a = Employee.new("Rob", "waiter", 78000, e)
b = Employee.new("Bob", "busboy", 12000, a)
c = Employee.new("Jack", "waiter", 10000, a)

a.boss=e

b.boss=a
c.boss=a

# p e.summed_salaries

p e.bonus(5)

# a.managed_employees.each {|e| p e.name}

