class CustomersController < ApplicationController
  def show
    @customers = current_general_user
  end

  def edit
     @customers = Customer.find(params[:id])
  end

  def update
  end

  def unsubscribe
     @customer = current_customer
  end

  def withdraw
  end
end
