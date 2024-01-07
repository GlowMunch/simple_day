require 'rails_helper'

RSpec.describe "Create Profile" do
  before :each do
    user_data
  end

  describe "As a New User" do
    it "Can create a new profile" do
      visit root_path
      expect(page).to have_content("Sign Up")
      click_on "Sign Up"
      expect(current_path).to eq(new_user_path)
      fill_in "Username", with: "user2"
      fill_in 'Password', with: "password2"
      fill_in 'Password confirmation', with: "password2"  # Use the correct label text
      click_on "Submit"
      expect(current_path).to eq(root_path)
      save_and_open_page
    end
  end
end

