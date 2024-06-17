class MessagesController < ApplicationController
  def show
    @message = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = current_user.message.build(message_params)
    if @message.save
      redirect_to @message, notice: 'Message was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @message.destroy
    redirect_to activity_message_path(@chatroom), notice: 'Message was successfully destroyed.'
  end
end
