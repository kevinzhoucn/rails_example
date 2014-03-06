class Onecompany::FrontController < OnecompanyController
  def index
    @product_categories = (Onecompany::ProductCategory).all
    @products = (Onecompany::Product).all
    html_report = Onecompany::Report::HTMLReport.new
    @report = html_report.output_report
  end
end
