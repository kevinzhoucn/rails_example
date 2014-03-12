class Onecompany::ProductsController < OnecompanyController
  # GET /onecompany/products
  # GET /onecompany/products.json
  def index
    @onecompany_products = Onecompany::Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @onecompany_products }
    end
  end

  # GET /onecompany/products/1
  # GET /onecompany/products/1.json
  def show
    @onecompany_product = Onecompany::Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @onecompany_product }
    end
  end

  # GET /onecompany/products/new
  # GET /onecompany/products/new.json
  def new
    @onecompany_product = Onecompany::Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @onecompany_product }
    end
  end

  # GET /onecompany/products/1/edit
  def edit
    @onecompany_product = Onecompany::Product.find(params[:id])
  end

  # POST /onecompany/products
  # POST /onecompany/products.json
  def create
    @onecompany_product = Onecompany::Product.new(params[:onecompany_product])

    respond_to do |format|
      if @onecompany_product.save
        format.html { redirect_to @onecompany_product, notice: 'Product was successfully created.' }
        format.json { render json: @onecompany_product, status: :created, location: @onecompany_product }
      else
        format.html { render action: "new" }
        format.json { render json: @onecompany_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /onecompany/products/1
  # PUT /onecompany/products/1.json
  def update
    @onecompany_product = Onecompany::Product.find(params[:id])

    respond_to do |format|
      if @onecompany_product.update_attributes(params[:onecompany_product])
        format.html { redirect_to @onecompany_product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @onecompany_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /onecompany/products/1
  # DELETE /onecompany/products/1.json
  def destroy
    @onecompany_product = Onecompany::Product.find(params[:id])
    @onecompany_product.destroy

    respond_to do |format|
      format.html { redirect_to onecompany_products_url }
      format.json { head :no_content }
    end
  end
end
