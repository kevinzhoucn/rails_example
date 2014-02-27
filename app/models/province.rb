class Province < ActiveRecord::Base
  attr_accessible :abbr, :name
  has_many :articles
end
