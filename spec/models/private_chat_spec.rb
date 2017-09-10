require 'rails_helper'

RSpec.describe PrivateChat, type: :model do
  describe "attributes" do
    it { is_expected.to respond_to(:participant_ids) }
  end
end
