class PrivateChatsController < ApplicationController
  def new
    @private_chat = PrivateChat.new
  end

  def create
    @participant_ids = params[:participant_ids].select(&:present?) << current_user.id.to_s
    @private_chat = PrivateChat.create(participant_ids: @participant_ids)
    redirect_to private_chat_path(@private_chat)
  end
end