class ChatroomsController < ApplicationController
  def show
    @activity = Activity.find(params[:activity_id])
    @chatroom = @activity.chatroom
    @message = Message.new
  end

  def index
    @chatrooms = Chatroom.joins(:messages).where(messages: { user_id: current_user.id }).distinct
  end
end
