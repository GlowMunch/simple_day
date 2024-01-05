require 'rails_helper'

RSpec.describe "journal_entries/index", type: :view do
  before(:each) do
    assign(:journal_entries, [
      JournalEntry.create!(),
      JournalEntry.create!()
    ])
  end

  it "renders a list of journal_entries" do
    render
  end
end
