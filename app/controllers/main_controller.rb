class MainController < ApplicationController
  def index
    @company = Company.new
    @companies = Company.where(user: current_user)
  end
end
