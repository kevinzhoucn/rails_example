class Rails3way::ExpenseReport < ActiveRecord::Base
  attr_accessible :title
  belongs_to :rails3way_user
  has_many :comments, :as => :subject, :class_name => "Rails3way::Comment"
end
