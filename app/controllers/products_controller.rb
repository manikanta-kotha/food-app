class ProductsController < ApplicationController

  # GET /products
  def index
    @products = Product.all
  end

  # GET /products/new || /add
  def new
    @product = Product.new
  end

  # POST /products
  def create
    @product = Product.new(product_params)    # Not the final implementation!
    if @product.save
      redirect_to products_url
      flash[:success] = "Item Added successfully"
    else
      render 'new'
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:name, :description, :image_url, :price)
  end
end
