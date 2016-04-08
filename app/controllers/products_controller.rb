class ProductsController < ApplicationController

	def index
		@products = current_user.products.order("id DESC")
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(name: product_params[:name],period: product_params[:period],conditions: product_params[:conditions], count: product_params[:count], user_id: current_user.id, start: product_params[:start], interval: product_params[:interval], finish: finish_day)
		binding.pry

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
			if params[:period] == "30"
				return 1.months.from_now(t)
			elsif params[:period] == "60"
				return 2.months.from_now(t)
			else
				return 3.months.from_now(t)
			end
	end


end