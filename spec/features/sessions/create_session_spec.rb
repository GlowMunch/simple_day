require "rails_helper"

RSpec.describe "Sessions" do
  describe "As a visitor" do
    it "I can login - Happy Path" do
      user = FactoryBot.create(:user)
      visit root_path
      click_on "Login"
      fill_in "Username", with: user.username
      fill_in "Password", with: user.password
      click_on "Login"
      expect(page).to have_content("Welcome, #{user.username}")
    end

    it "I can login - Sad Path" do
      user = FactoryBot.create(:user)
      visit root_path
      click_on "Login"
      fill_in "Username", with: user.username
      fill_in "Password", with: "wrong_password"
      click_on "Login"
      expect(page).to have_content("Sorry, your credentials are bad.")
    end

    it "I can logout" do
      user = FactoryBot.create(:user)
      visit root_path
      click_on "Login"
      fill_in "Username", with: user.username
      fill_in "Password", with: user.password
      click_on "Login"
      expect(page).to have_content("Welcome, #{user.username}")
      click_on "Log Out"
      expect(page).to have_content("You have been logged out.")
      expect(current_path).to eq(root_path)
    end
  end
end