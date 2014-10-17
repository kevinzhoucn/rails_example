class Recipe::Magazine < ActiveRecord::Base
  attr_accessible :title
  has_many :subscriptions, :class_name => "Recipe::Subscription", :foreign_key => :recipe_magazine_id
  has_many :readers, :through => :subscriptions

  has_many :semiannual_subscribers, :through => :subscriptions, :source => :reader, :conditions => ['length_in_issues = 6']
end
