class MusiciansController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @musicians = User.where(is_musician: true)
  end

  def show
    @musician = User.find(params[:id])
  end

end
