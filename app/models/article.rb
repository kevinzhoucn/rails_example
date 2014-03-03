class Article < ActiveRecord::Base
  attr_accessible :content, :segment_id, :province_id, :title
  belongs_to :segment
  belongs_to :province

  scope :published, where( published: true)
  scope :region, lambda { |id| where( province_id: id) } 
end
