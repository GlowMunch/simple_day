require 'rails_helper'

RSpec.describe Journal, type: :model do
  it { should have_many(:entries) }
  it { should belong_to(:user) }
end
