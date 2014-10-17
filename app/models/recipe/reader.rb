class Recipe::Reader < ActiveRecord::Base
  attr_accessible :name
  has_many :subscriptions, :class_name => "Recipe::Subscription", :foreign_key => :recipe_reader_id
  has_many :magazines, :through => :subscriptions
end
