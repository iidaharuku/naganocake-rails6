class CustomersController < ApplicationController
  def show
  end

  def edit
  end
  
  def update
    @end_user = current_end_user
    if @end_user.update(end_user_params)
      redirect_to mypage_path
    else
      render :edit
    end
  end

  def confirm
  end
  
  private
  def end_user_params
    params.require(:end_user).permit(:last_name, :first_name, :last_kana_name, :first_kana_name, :postal_code, :address, :telephone_number, :password_confirmation)
  end
end