require 'rails_helper'

RSpec.describe "Create Journal" do
  before :each do
    user_data
    user_login
  end
  it "Can create a new journal - Happy Path" do
    save_and_open_page
    # expect(page).to have_content("Create Journal")
    # click_on "Create Journal"
    # expect(current_path).to eq(new_journal_path)
    # fill_in "Title", with: "Journal_1"
    # fill_in 'Description', with: "This is a journal"
    # click_on "Submit"
    # expect(current_path).to eq(root_path)
    # expect(page).to have_content("Journal_1")
  end
end