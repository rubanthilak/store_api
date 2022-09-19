class ProductsController < ApplicationController
  respond_to :json

  def index
    products = Product.all
    render json: products, status: :ok
  end
  
  def show
    product = Product.find(params[:id])
    render json: product, status: :ok
  end

  def create
    product = Product.new(product_params)
    product.save!
    render json: product, status: :ok
  end

  def update
    product = Product.find(params[:id])
    product.update_attributes(product_params)
    render json: product
  end

  def destroy
    Product.destroy(params[:id])
  end

  private

  def product_params
    params.require(:product).permit([:name, :description, :in_stock, :price])
  end
end
