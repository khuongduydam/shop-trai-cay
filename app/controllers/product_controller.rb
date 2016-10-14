class ProductController < ApplicationController
  def index
    @products = Product.all.order("id asc")
  end
end
