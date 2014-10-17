class Recipe::Subscription < ActiveRecord::Base
  attr_accessible :last_renewal_on, :length_in_issues
  
  belongs_to :reader, :class_name => "Recipe::Reader", :foreign_key => :recipe_reader_id
  belongs_to :magazine, :class_name => "Recipe::Magazine", :foreign_key => :recipe_magazine_id
end