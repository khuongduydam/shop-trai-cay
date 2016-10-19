class ProductsController < ApplicationController
  before_action :find_product,only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
    @informations = Information.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Create Successfull!!!"
      redirect_to product_url
    else
      flash.now[:notice] = "Error!!!"
      render 'new'
    end
  end

  def edit
  end

  def update
    @product = Product.update(product_params)
    if product.save
      flash[:success] = "Update Successfull!!!"
    else
      flash.now[:danger] = "Error!!!"
      render 'edit'
    end
  end

  def show
  end

  def destroy
    if @product.destroy
      flash[:success] = "Deleted Successfull!!!"
      redirect_to products_url 
    else
      flash[:danger] = "Error!!!"
    end
  end

  private

  def product_params
    params.require(:product).permit(:name,:type_of_product,:model,:quantity,:price,:come_from,:avatar)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
