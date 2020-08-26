class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      :password,
      :first_name,
      :last_name,
      :phone_number,
      :address,
      :photo,
      :video,
      :bio,
      :price,
      :ensemble_type,
      :instruments,
      :facebook,
      :youtube,
      :website,
      :instagram,
      :repertoire_1,
      :repertoire_1_length,
      :repertoire_2,
      :repertoire_2_length,
      :is_musician
      )
  end
end
