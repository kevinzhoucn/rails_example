class ApplicationController < ActionController::Base
  layout :layout_by_resource

  before_filter :get_provinces

  protect_from_forgery

  private
    def get_provinces
      @provinces = Province.all
    end
  protected
    def layout_by_resource
      if devise_controller?
        "appjianzhu"
      else
        "application"
      end
    end
end
