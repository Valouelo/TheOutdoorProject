class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      redirect_to activity_chatroom_path(@chatroom.activity, @chatroom)
    else
      render "chatrooms/show", status: :unprocessable_entity
    end
  end

  def destroy
    @message.destroy
    redirect_to activity_message_path(@chatroom), notice: 'Message was successfully destroyed.'
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
