class MessagesController < ApplicationController
  def create
    @message = current_user.messages.create(message_params)
    private_chat_id = params[:message][:private_chat_id]
    redirect_to private_chat_path(private_chat_id)
  end

  private
    def message_params
      params.require(:message).permit(:content, :private_chat_id)
    end
end