class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :sub_categories
  has_many :posts

  def get_posts
    posts = []
    sub_categories.each do |sub_category|
      posts << sub_category.posts.select("id, title, created_at")
    end
    posts.sort_by {|x, y| x.created_at <=> y.created_at}
  end
end
