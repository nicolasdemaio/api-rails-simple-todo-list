class TasksController < ApplicationController

  def index
    @products = Product.all

    render json: @products
  end

  def show
    @product = Product.find(params[:id])
    render json: @product
  end

  # POST /books
  def create
    @product = Product.new(name: params['name'], price: params['price'])

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product/id
  def destroy
    Product.delete(params['id'])
    render status: :ok
  end

end
