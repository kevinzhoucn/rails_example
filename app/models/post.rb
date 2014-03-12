class Post < ActiveRecord::Base
  attr_accessible :categroy_id, :sub_category_id, :title, :province_id, :user_id, :content

  belongs_to :sub_category
  belongs_to :province
  belongs_to :user

  default_scope order: "created_at DESC"
  scope :region, lambda { |id| where( province_id: id) }

  # def Post.auth(sal, name, code)
  #   if sal == "jzw"
  #     if user = Maintain::InviteUser.find_by_name(name)
  #       if user.code == code
  #         user
  #       end
  #     end
  #   end
  # end
end
