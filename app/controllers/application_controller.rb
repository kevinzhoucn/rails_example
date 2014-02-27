class ApplicationController < ActionController::Base
  before_filter :get_provinces
  protect_from_forgery

  private
    def get_provinces
      @provinces = Province.all
    end
end
