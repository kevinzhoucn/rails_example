class Post < ActiveRecord::Base
  attr_accessible :categroy_id, :sub_category_id, :title
  belongs_to :sub_category
end
