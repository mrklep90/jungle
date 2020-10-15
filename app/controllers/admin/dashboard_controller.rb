class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["BASIC_AUTHENTICATION_USER"], password: ENV["BASIC_AUTHENTICATION_PASSWORD"]

  def show
  end
end
