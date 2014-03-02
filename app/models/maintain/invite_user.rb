class Maintain::InviteUser < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :invite_articles

  # def (Maintain::InviteUser).auth(sal, name, code)
  #   if sal == "jzw"
  #     if user = InviteUser.find_by_name(name)
  #       if user.code == code
  #         user
  #       end
  #     end
  #   end
  # end

  def (Maintain::InviteUser).authenticate(sal, name, code)
    if sal == "jzw"
      if inviter = (Maintain::InviteUser).find_by_name(name)
        if inviter.code == code
          inviter
        end
      end
    end
  end
end