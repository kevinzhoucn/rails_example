class SubCategory < ActiveRecord::Base
  attr_accessible :category_id, :name
  belongs_to :category
  has_many :posts

  def cat_name
    Category.find(category_id).name
  end
end
