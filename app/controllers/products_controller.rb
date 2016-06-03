class ProductsController < ApplicationController
<<<<<<< HEAD

	def index
		@products = current_user.products.order("id DESC")
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(name: product_params[:name],period: product_params[:period],conditions: product_params[:conditions], count: product_params[:count], user_id: current_user.id, start: product_params[:start], interval: product_params[:interval], finish: finish_day)

		if @product.save
			redirect_to('/products')
		else
			render :new
		end

	end

	def destroy
		product = Product.find(params[:id])
		if product.user_id == current_user.id
			product.destroy
		end
	end

	def show
		@product = Product.find(params[:id])
	end

	def update
		#countにプラス1
		product = Product.find(params[:id])
		count = product.count + 1
		product.update_attribute(:count,count)
		redirect_to('/products')
	end

	def about
	end

	private
	def product_params
		params.permit(:name, :period, :conditions, :count, :start, :interval)
	end

	def finish_day
		t = Chronic.parse(params[:start])
		if t then
			if params[:period] == "30"
				return 1.months.from_now(t)
			elsif params[:period] == "60"
				return 2.months.from_now(t)
			else
				return 3.months.from_now(t)
			end
		end
	end


end
=======
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.fetch(:product, {})
    end
end
>>>>>>> ac66dd36a2730c9829d960ddcef508e076f6603f
