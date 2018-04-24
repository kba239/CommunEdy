require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create!(name: "CommunEdy User", email: "user@communedy.com", password: "password") }
  it { is_expected.to have_many(:posts) }
end
