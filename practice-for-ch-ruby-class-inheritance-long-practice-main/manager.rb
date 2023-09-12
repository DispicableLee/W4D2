require_relative "employee"

class Manager < Employee

    def initialize(name, title, salary, boss, managed_employees)
        super(name, title, salary, boss)
        @managed_employees = []

    end 






end 
