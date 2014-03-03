class FrontController < ApplicationController
  def index
    @categories = Category.all
    @segments = Segment.all
  end

  def region
    @categories = Category.all
    @segments = Segment.all
    @province = Province.find_by_abbr(request.subdomain) || not_found
#   @province = Province.find_by_abbr(params[:abbr])
    #@user = User.where(:name => request.subdomain).first || not_found
  end

  def publish
    @categories = Category.all
  end

  def admin
    @categories = Category.all
  end

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end
end
