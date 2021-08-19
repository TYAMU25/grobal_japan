class CustomersController < ApplicationController
  def show
    @customers = current_general_user
  end

  def edit
    @general_user = GeneralUser.find(params[:id])
  end

  def update
     @customer = GeneralUser.find(params[:id])
     #binding.pry
    if @customer.update(customer_params)
      redirect_to customer_path(@customer), notice: "会員情報を変更しました"
    else
      render :edit
    end
  end

  def unsubscribe
     @customer = current_general_user
  end

  def withdraw
  end
  
  private
  def customer_params
    params.require(:general_user).permit(:name, :gender, :birthdate, :self_introduction, :email , :encrypted_password)
  end

end
