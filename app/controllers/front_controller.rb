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

  def sort
    sort_str = params[:sort]

    if not params[:abbr].nil?
      @province = Province.find_by_abbr(params[:abbr])
    end
    
    if not sort_str.nil?
      sort_str =~ %r{jzc(\d+)s(\d+)p(\d+)}
      @sort_str_ret = [$1, $2, $3]

      if $1 != '0'
        @category = Category.find($1)       

        if $2 != '0'
          @sub_category = @category.sub_categories.find($2)
        else
          @sub_categories = @category.sub_categories
        end

      else
        @categories = Category.all
      end
    end
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
