class Onecompany::FrontController < OnecompanyController
  def index
    @product_categories = (Onecompany::ProductCategory).all
    @products = (Onecompany::Product).all
  end
end
