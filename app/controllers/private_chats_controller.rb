class PrivateChatsController < ApplicationController
  def new
    @private_chat = PrivateChat.new
  end

  def create
    @participant_ids = params[:participant_ids].select(&:present?) << current_user.id.to_s
    @private_chat = PrivateChat.create(participant_ids: @participant_ids)
    redirect_to private_chat_path(@private_chat)
  end

  def show
    @private_chat = PrivateChat.find(params[:id])
    @participants = @private_chat.participant_ids.map { |id| User.find(id.to_i).username }
  end

  def index
    @chat_ids = PrivateChat.find_my_chats(current_user.id).pluck(:id)
    @private_chats = @chat_ids.map { |id| PrivateChat.find(id) }
  end
end