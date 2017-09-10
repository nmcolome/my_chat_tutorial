require 'rails_helper'

RSpec.describe "Navigation" do
  context "as a guest" do
    it "can only see the Sign Up or the Login link" do
      visit "/"
      expect(page).to have_link("Sign Up")
      expect(page).to have_link("Login")
      expect(page).to_not have_link("Logout")
    end
  end

  context "as a logged in user" do
    it "the Sign Up/ Login link are not there" do
      user = User.create(username: "test_user", password: "password")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit "/"
      expect(page).to have_link("Logout")
      expect(page).to_not have_link("Sign Up")
      expect(page).to_not have_link("Login")
    end
  end
end