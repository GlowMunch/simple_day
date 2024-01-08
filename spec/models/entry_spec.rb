require 'rails_helper'

RSpec.describe Entry, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should belong_to(:journal) }
  end
end
