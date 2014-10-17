class Rails3way::Timesheet < ActiveRecord::Base
  attr_accessible :title
  belongs_to :rails3way_user, :class_name => "Rails3way::User", :foreign_key => :rails3way_user_id
  has_many :comments, :as => :subject, :class_name => "Rails3way::Comment"
end
