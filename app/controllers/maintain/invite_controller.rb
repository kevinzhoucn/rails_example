class Maintain::InviteController < ApplicationController
  def index
    @maintain_customer_feedback = Maintain::CustomerFeedback.new
    @inviter_login = session[:invite_user_id]
  end

  def new
  end

  def create
    if invite_user = (Maintain::InviteUser).authenticate(params[:sal], params[:name], params[:code])
      session[:invite_user_id] = invite_user.id
      session[:last_seen] = Time.now
      redirect_to maintain_plan_url
    else
      redirect_to maintain_url, :notice => t(".maintain_invalid_test_code")
    end
    #redirect_to root_url, :alert => (Maintain::InviteUser).get_const
    #redirect_to post_path(11), :notice => (Maintain::InviteUser).get_const
  end

  def destory
    session[:invite_user_id] = nil
    redirect_to root_url, :notice => "Logged out"
  end  
end
