class CustomersController < ApplicationController
  before_action :authenticate_admin_user!
  def show
    @general_user = current_general_user
  end

  def edit
     @general_user = current_general_user
  end

  def update
  end

  def unsubscribe
     @customer = current_customer
  end

  def withdraw
  end
end
