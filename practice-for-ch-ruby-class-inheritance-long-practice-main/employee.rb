class Employee

    attr_accessor :name, :title, :salary, :boss

    def initialize(name, title, salary, boss = nil)
        @name = name 
        @title = title 
        @salary = salary 
        @boss = boss
    end 

    def bonus(multiplier)
        if @title != manager
            @salary += @salary * multiplier
        else 
            


        end 
    end 






end 
