class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["BASIC_AUTHENTICATION_USER"], password: ENV["BASIC_AUTHENTICATION_PASSWORD"]

  def show
    @products = Product.count
    @categories = Category.count
  end
end
