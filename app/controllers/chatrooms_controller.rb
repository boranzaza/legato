class ChatroomsController < ApplicationController
  def index
    if current_user.is_musician
      @chatrooms = Chatroom.where(musician_id: current_user.id).order(created_at: :desc)
    else
      @chatrooms = Chatroom.where(customer_id: current_user.id).order(created_at: :desc)
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @user = User.find(params[:user_id])
    if current_user.is_musician
      @chatroom = Chatroom.find_or_create_by(customer: @user, musician: current_user)
    else
      @chatroom = Chatroom.find_or_create_by(customer: current_user, musician: @user)
    end
    redirect_to chatroom_path(@chatroom)
  end

  # def destroy
  # end

  private

  def chatroom_params
    params.require(:chatroom).permit(:customer_id, :musician_id)
  end

end
