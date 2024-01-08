require 'rails_helper'

RSpec.describe "Create Journal" do
  it "User can see Journals - Happy Path" do
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
    expect(current_path).to eq(user_journals_path(user.id))
    click_on "New Journal"
    expect(current_path).to eq(new_user_journal_path(user.id))
    fill_in "Journal Title", with: "Journal_2"
    click_on "Create Journal"
    expect(current_path).to eq(user_journals_path(user.id))
    expect(page).to have_content("Journal_2")
  end
end