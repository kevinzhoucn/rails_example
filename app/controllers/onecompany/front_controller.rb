class Onecompany::FrontController < OnecompanyController
  def index
    @categories = (Onecompany::ProductCategory).all
    @products = (Onecompany::Product).all
  end
end
