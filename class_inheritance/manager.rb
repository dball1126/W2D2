require_relative "employee"
class Manager < Employee
    attr_reader :employees
    def initialize(name, title, salary, boss)
        @employees = []
        super
    end

    def bonus(multiplier)
        self.collect_salaries * multiplier
    end

    def collect_salaries
        
        # return employee.salary until employee.is_a?(Manager)
        subordinate_salaries = 0
          
        self.employees.each do |subordinate|
            unless subordinate.is_a?(Manager)
                subordinate_salaries += subordinate.salary 
            else 
                subordinate_salaries += subordinate.collect_salaries
            end
        end 

        return subordinate_salaries
    end

end