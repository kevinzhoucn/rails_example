class Post < ActiveRecord::Base
  attr_accessible :categroy_id, :sub_category_id, :title
  belongs_to :sub_category

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
