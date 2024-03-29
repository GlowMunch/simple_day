require 'rails_helper'

RSpec.describe "Create entry" do
  it "User can create a new entry - Happy Path" do
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
    click_on "Journal_1"
    expect(current_path).to eq(user_journal_path(user.id, journal.id))
    expect(page).to have_content("New Entry")
    click_on "New Entry"
    fill_in "Title", with: "Entry_1"
    fill_in "Content", with: "This is the content of Entry_1"
    click_on "Create Entry"
    expect(current_path).to eq(user_journal_entries_path(user.id, journal))
    expect(page).to have_content("Entry_1")
    save_and_open_page
  end
end
