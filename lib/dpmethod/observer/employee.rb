require 'observer'
module Dpmethod::Observer
  class Employee
    include Observable

    attr_reader :name, :address
    attr_reader :salary

    def initialize( name, title, salary )
      @name = name
      @title = title
      @salary = salary
    end

    def salary=(new_salary)
      @salary = new_salary
      changed
      notify_observers(self)
    end
  end  

  class TaxMan
    attr_reader :message

    def update( changed_employee )
      @message = "Cut a new check for #{changed_employee.name}!"
      @message << "His salary is now #{changed_employee.salary}!"
      @message << "Send #{changed_employee.name} a new tax bill!"
    end
  end

  class SuperMan
    attr_reader :message

    def update( changed_employee )
      @message = "Another Cut a new check for #{changed_employee.name}!"
      @message << "His salary is now #{changed_employee.salary}!"
      @message << "Send #{changed_employee.name} a new tax bill!"
    end
  end
end