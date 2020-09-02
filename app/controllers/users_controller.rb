class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update!(user_params)
      sign_in(current_user, :bypass => true)
      redirect_to edit_user_path(params[:id])
    else
      render :edit
    end
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
