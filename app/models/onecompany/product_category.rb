class Onecompany::ProductCategory < ActiveRecord::Base
  attr_accessible :name
  has_many :onecompany_products
end
