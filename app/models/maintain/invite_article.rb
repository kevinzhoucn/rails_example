class Maintain::InviteArticle < ActiveRecord::Base
  attr_accessible :content, :invite_user_id, :title
  belongs_to :invite_user
end
