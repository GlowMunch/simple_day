require 'rails_helper'

RSpec.describe "Create Profile" do
  before :each do
    user_data
  end

  describe "As a New User" do
    it "Can create a new profile - Happy Path" do
      visit root_path
      expect(page).to have_content("Sign Up")
      click_on "Sign Up"
      expect(current_path).to eq(new_user_path)
      fill_in "Username", with: "user2"
      fill_in 'Password', with: "password2" 
      click_on "Submit"
      expect(current_path).to eq(root_path)
      expect(page).to have_content("Welcome, user2")
    end
  end
  xit "Can create a new profile - Sad Path" do
    visit root_path
    expect(page).to have_content("Sign Up")
    click_on "Sign Up"
    expect(current_path).to eq(new_user_path)
    fill_in "Username", with: "user2"
    fill_in 'Password', with: "password2"
    fill_in 'Password confirmation', with: "password1"
    click_on "Submit"
    expect(current_path).to eq(root_path)
    expect(page).to have_content("Welcome, user2")
  end
end
