class ProductsController < ApplicationController
  def index
  	@product = Product.all
  end

  def new
  	@product = Product.all
  	@category = Category.all
  end

  def edit
  	@product = Product.find(params[:id])
  end
  
  def create
  	@product = Product.find(params[:product => :]).categories.new(params[:product])
  	if @product.save
  		redirect_to @product 
  	else
  		render 'new'
  	end
  end

  def show
  	@product = Product.find(params[:id])
  end

  def update
  	
  end

  def destroy
  end 
end
