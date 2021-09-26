class CustomersController < ApplicationController
  def show
    @customer = current_general_user
  end

  def edit
    redirect_to customer_path(params[:id]) if params[:id].to_i != current_general_user.id
    @general_user = GeneralUser.find(params[:id])
  end

  def update
    @customer = GeneralUser.find(params[:id])
    if @customer.update(customer_params)
      redirect_to customer_path(@customer), notice: '会員情報を変更しました'
    else
      render :edit
    end
  end

  def destroy
    @customer = GeneralUser.find(params[:id])
    @customer.destroy
    flash[:success] = 'ユーザーを削除しました。'
    redirect_to submission_path(@submission)
  end

  def unsubscribe
    @customer = current_general_user
  end

  def withdraw
    @customer = current_general_user
    @customer.delete
    reset_session
    redirect_to root_path, alert: '退会しました'
  end

  private

  def customer_params
    params.require(:general_user).permit(:name, :gender, :birthdate, :self_introduction, :email, :encrypted_password)
  end
end
