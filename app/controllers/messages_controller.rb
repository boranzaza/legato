class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user

    if @message.save 
      ChatroomChannel.broadcast_to(
        @chatroom,
        { sender_card: render_to_string(partial: "sender_message", locals: { message: @message, user: current_user }),
          receiver_card: render_to_string(partial: "receiver_message", locals: { message: @message, user: current_user }),
         senderId: current_user.id
        }
      )
      redirect_to chatroom_path(@chatroom, anchor: "message-#{@message.id}")

    else
      render "chatrooms/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
