class MusiciansController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:query].present?
      @musicians = User.search_musician(params[:query]).where(is_musician: true)
    else
      @musicians = User.where(is_musician: true)
    end
  end

  def show
    @musician = User.find(params[:id])
  end

  def edit
    @musician = User.find(params[:id])
  end

  def update
    @musician = User.find(params[:id])
    @musician.update(musician_params)
    redirect_to musician_path(params[:id])
  end

  private

  def musician_params
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
      :is_musician,
      :query
      )
  end

end
