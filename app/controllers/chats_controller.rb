class ChatsController < ApplicationController
  def index
    @chat = Chat.includes(:messages).where(messages: {id: nil}).first_or_create
    redirect_to chat_path(@chat)
  end
  
  def show
    @chat = Chat.find(params[:id])
  end
end
