class ProductsController < ApplicationController
  before_action :find_product
  def rating
    ratings = @product.order_products.group('order_products.rating').count
    avg_rating = ratings.inject(0.0) {|sum, elem| sum + elem[1]} / ratings.size
    render json: {
      ratings: ratings,
      average_rating: avg_rating
    }, status: :ok
  end

  private

  def find_product
    @product = Product.find_by(id: params[:id].to_s)
    render json: {messages: ["No such product"]}, status: :not_found if @product.nil?
  end
end
