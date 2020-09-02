class ChatroomChannel < ApplicationCable::Channel
  # User is 'subscribed' when they land on the chatroom#show page.
  def subscribed
    chatroom = Chatroom.find(params[:id])
    stream_for chatroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
