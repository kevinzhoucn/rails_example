class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :sub_categories

  def post_map
    
  end
end
