class FrontController < ApplicationController
  before_filter :authenticate_admin!, only: [:admin]
  before_filter :authenticate_user!, only: [:publish]
  def index
    @categories = Category.all
    @segments = Segment.all
  end

  def region
    @categories = Category.all
    @segments = Segment.all
    # if request.subdomain == "www" or request.subdomain == false
    #   @cn = true
    # else      
#    @province = Province.find_by_abbr(request.subdomain) || not_found
#    end
    if not params[:abbr].nil?
      @province = Province.find_by_abbr(params[:abbr])
    end
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
