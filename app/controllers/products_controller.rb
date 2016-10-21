class ProductsController < ApplicationController
  before_action :find_product,only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
    @tintucs = Tintuc.all
    @_hash = Gmaps4rails.build_markers(@users) do |user, marker|
    marker.lat user.latitude
    marker.lng user.longitude
end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Create Successfull!!!"
      redirect_to @product
    else
      flash.now[:notice] = "Error!!!"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @product.update_attributes(product_params)
      flash[:success] = "Update Successfull!!!"
      redirect_to product_path @product
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
      redirect_to @product
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
