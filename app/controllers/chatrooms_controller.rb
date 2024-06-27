class ChatroomsController < ApplicationController
  def index
    @activity = Activity.find(params[:activity_id])
    @chatrooms = Chatroom.joins(:messages).where(messages: { user_id: current_user.id }).distinct

    render "index"
  end

  def show

    @activity = Activity.find(params[:activity_id])
    @chatroom = @activity.chatroom
    if params[:origin] == "modal"
      Message.create(user: current_user, chatroom: @chatroom, content: "")
    end
    @message = Message.new
    @chatrooms = Chatroom.joins(:messages).where(messages: { user_id: current_user.id }).distinct
    render "index"
  end
end
