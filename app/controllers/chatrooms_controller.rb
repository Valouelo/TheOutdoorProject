class ChatroomsController < ApplicationController
  def index
    @activity = Activity.find(params[:activity_id])
    @chatrooms = Chatroom.joins(:messages).where(messages: { user_id: current_user.id }).distinct

    render "index"
  end

  def show
    @activity = Activity.find(params[:activity_id])
    @chatroom = @activity.chatroom
    @message = Message.new
    @chatrooms = Chatroom.joins(:messages).where(messages: { user_id: current_user.id }).distinct
    render "index"
  end
end
