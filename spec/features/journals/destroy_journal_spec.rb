require 'rails_helper'

RSpec.describe "Destroy Journal" do
  it "User can destroy and existing Journal - Happy Path" do
    user = FactoryBot.create(:user)
    journal = FactoryBot.create(:journal, user_id: user.id)
    visit root_path
    expect(page).to have_content("Login")
    click_on "Login"
    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    click_on "Login"
    expect(current_path).to eq(root_path)
    click_on "Journals"
    expect(page).to have_content("Journal_1")
    click_on "Delete"
    expect(page).to_not have_content("Journal_1")
    expect(page).to_not have_content("Delete")
  end
end