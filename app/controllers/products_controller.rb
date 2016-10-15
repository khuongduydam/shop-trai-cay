class ProductsController < ApplicationController
  before_action :find_product,only: [:show,:edit,:destroy]
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(:name,:type_of_product,:model,:quantity,:price,:come_from)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
