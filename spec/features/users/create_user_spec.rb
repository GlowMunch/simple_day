require 'rails_helper'

RSpec.describe "Create Profile" do
  before :each do
    # user_data
  end

  describe "As a New User" do
    it "Can create a new profile" do
      visit root_path
      expect(page).to have_content("Simple Day")
      save_and_open_page
    end
  end
end