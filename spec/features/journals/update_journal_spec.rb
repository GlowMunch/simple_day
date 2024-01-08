require 'rails_helper'

RSpec.describe "Update Journal" do
  describe "User can update an exsisting Journals Title" do

    it "User can change the title of an existing Journal Title - Happy Path" do
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
      expect(current_path).to eq(user_journals_path(user.id))
      click_on "Edit"
      expect(current_path).to eq(edit_user_journal_path(user.id, journal.id))
      fill_in "Edit Title", with: "Journal_Updated"
      click_on "Update Journal"
      expect(current_path).to eq(user_journals_path(user.id))
      expect(page).to have_content("Journal_Updated")
      expect(current_path).to eq(user_journals_path(user.id))
    end

    it "User can change the title of an existing Journal - Sad Path" do
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
      expect(current_path).to eq(user_journals_path(user.id))
      click_on "Edit"
      expect(current_path).to eq(edit_user_journal_path(user.id, journal.id))
      fill_in "Edit Title", with: ""
      click_on "Update Journal"
      expect(page).to have_content("Title can't be blank")
      expect(current_path).to eq(user_journal_path(user.id, journal.id))
    end
  end
end