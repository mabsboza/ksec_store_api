module Api::V1
  class ProductsController < ApplicationController

    def index
      @products = Product.all
      render json: @products
    end

    def create
      @products = Product.new(product_params)

      if @products.save
        render json: @products, status: :created
      else
        render json: @products.errors, status: :unprocessable_entity
      end
    end

    def update
      @products = Product.find(params[:id])
      if @products.update(product_params)
        render json: @products
      else
        render json: @products.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @products = Product.find(params[:id])
      @products.destroy
    end

    ###############################################################
     private

     def product_params
       params
           .require(:product)
           .permit(:code, :name, :brand, :quantity, :price)
     end
  end
end