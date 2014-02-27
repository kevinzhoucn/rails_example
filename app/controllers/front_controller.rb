class FrontController < ApplicationController
  def index
    @categories = Category.all
  end

  def region
    @categories = Category.all
    @province = Province.find_by_abbr(params[:abbr])
  end

  def publish
    @categories = Category.all
  end

  def admin
    @categories = Category.all
  end
end
