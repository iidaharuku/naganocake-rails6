class Admin::CustomersController < ApplicationController
  def index
    @users = EndUser.all
  end

  def show
  end

  def edit
  end
  
  def update
  end
end
