class PrivateChat < ApplicationRecord
  has_many :messages

  def self.find_my_chats(id)
    PrivateChat.find_by_sql [
      "SELECT id 
      FROM Private_Chats 
      WHERE '#{id}' = ANY(participant_ids)"
    ]
  end
end
