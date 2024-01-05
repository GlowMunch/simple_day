require 'rails_helper'

RSpec.describe "journal_entries/new", type: :view do
  before(:each) do
    assign(:journal_entry, JournalEntry.new())
  end

  it "renders new journal_entry form" do
    render

    assert_select "form[action=?][method=?]", journal_entries_path, "post" do
    end
  end
end
