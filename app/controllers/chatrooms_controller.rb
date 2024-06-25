class ChatroomsController < ApplicationController
  def show
    @activity = Activity.find(params[:activity_id])
    @chatroom = @activity.chatroom
    @message = Message.new
  end
end
