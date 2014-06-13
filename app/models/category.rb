class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :sub_categories
  has_many :posts

  def get_posts
    posts = []
    sub_categories.each do |sub_category|
      sub_category.posts.select("id, title, created_at").each do |post|
        posts << post
      end
    end
    posts.sort! {|x, y| y.created_at <=> x.created_at}
#    posts = posts.sort_by {|x, y| x.created_at <=> y.created_at}
  end

  def get_posts_region(province_id)
    posts = []
    sub_categories.each do |sub_category|
      sub_category.posts.region(province_id).select("id, title, created_at").each do |post|
        posts << post
      end
    end
    posts.sort! {|x, y| y.created_at <=> x.created_at}
  end
end
