class MessagesController < ApplicationController
  def create
    @message = Message.create(content: I18n.t('cooking', ingredients: message_params[:content]), chat_id: params[:chat_id], role: "user")

    AiResponseWorker.perform_async(@message.chat_id)

    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
