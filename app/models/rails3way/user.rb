class Rails3way::User < ActiveRecord::Base
  attr_accessible :name
  has_many :timesheets, :class_name => "Rails3way::Timesheet", :foreign_key => :rails3way_user_id
  has_many :expense_reports, :class_name => "Rails3way::ExpenseReport", :foreign_key => :rails3way_user_id
end
