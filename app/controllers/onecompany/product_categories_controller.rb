class Onecompany::ProductCategoriesController < OnecompanyController
  # GET /onecompany/product_categories
  # GET /onecompany/product_categories.json
  def index
    @onecompany_product_categories = Onecompany::ProductCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @onecompany_product_categories }
    end
  end

  # GET /onecompany/product_categories/1
  # GET /onecompany/product_categories/1.json
  def show
    @onecompany_product_category = Onecompany::ProductCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @onecompany_product_category }
    end
  end

  # GET /onecompany/product_categories/new
  # GET /onecompany/product_categories/new.json
  def new
    @onecompany_product_category = Onecompany::ProductCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @onecompany_product_category }
    end
  end

  # GET /onecompany/product_categories/1/edit
  def edit
    @onecompany_product_category = Onecompany::ProductCategory.find(params[:id])
  end

  # POST /onecompany/product_categories
  # POST /onecompany/product_categories.json
  def create
    @onecompany_product_category = Onecompany::ProductCategory.new(params[:onecompany_product_category])

    respond_to do |format|
      if @onecompany_product_category.save
        format.html { redirect_to @onecompany_product_category, notice: 'Product category was successfully created.' }
        format.json { render json: @onecompany_product_category, status: :created, location: @onecompany_product_category }
      else
        format.html { render action: "new" }
        format.json { render json: @onecompany_product_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /onecompany/product_categories/1
  # PUT /onecompany/product_categories/1.json
  def update
    @onecompany_product_category = Onecompany::ProductCategory.find(params[:id])

    respond_to do |format|
      if @onecompany_product_category.update_attributes(params[:onecompany_product_category])
        format.html { redirect_to @onecompany_product_category, notice: 'Product category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @onecompany_product_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /onecompany/product_categories/1
  # DELETE /onecompany/product_categories/1.json
  def destroy
    @onecompany_product_category = Onecompany::ProductCategory.find(params[:id])
    @onecompany_product_category.destroy

    respond_to do |format|
      format.html { redirect_to onecompany_product_categories_url }
      format.json { head :no_content }
    end
  end
end
