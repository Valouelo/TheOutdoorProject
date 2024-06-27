class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: {message: @message})
      )
      head :ok
    else
      render "chatrooms/show", status: :unprocessable_entity
    end
  end

  def destroy
    @message.destroy
    redirect_to activity_message_path(@chatroom), notice: 'Le message a été supprimé avec succès.'
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
