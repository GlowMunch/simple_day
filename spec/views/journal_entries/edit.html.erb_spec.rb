require 'rails_helper'

RSpec.describe "journal_entries/edit", type: :view do
  before(:each) do
    @journal_entry = assign(:journal_entry, JournalEntry.create!())
  end

  it "renders the edit journal_entry form" do
    render

    assert_select "form[action=?][method=?]", journal_entry_path(@journal_entry), "post" do
    end
  end
end
