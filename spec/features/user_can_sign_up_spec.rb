require 'rails_helper'

RSpec.describe "Sign Up" do
  it "is a success with valid credentials" do
    visit "/"
    click_on "Sign Up"

    expect(current_path).to eq("/users/new")
    fill_in "Username", with: "test_user"
    fill_in "Password", with: "password"
    click_on "Sign Up"

    expect(User.count).to eq(1)
    expect(current_path).to eq("/")
  end

  it "returns error without a password" do
    visit "/"
    click_on "Sign Up"

    expect(current_path).to eq("/users/new")
    fill_in "Username", with: "test_user"
    fill_in "Password", with: ""
    click_on "Sign Up"

    expect(User.count).to eq(0)
    expect(current_path).to eq(new_user_path)
    expect(page).to have_content("Invalid username or password")
  end

  it "returns error without a name" do
    visit "/"
    click_on "Sign Up"

    expect(current_path).to eq("/users/new")
    fill_in "Username", with: ""
    fill_in "Password", with: "password"
    click_on "Sign Up"

    expect(User.count).to eq(0)
    expect(current_path).to eq(new_user_path)
    expect(page).to have_content("Invalid username or password")
  end
end