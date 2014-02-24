class FrontController < ApplicationController
  def index
    @categories = Category.all
  end

  def publish
    @categories = Category.all    
  end

  def admin
    @categories = Category.all
  end
end
