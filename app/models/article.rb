class Article < ActiveRecord::Base
  attr_accessible :content, :segment_id, :province_id, :title
  belongs_to :segment
  belongs_to :province
end
