require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe 'associations' do
    it { should have_many(:questions).dependent(:destroy) }
    it { should have_many(:answers).dependent(:destroy) }
  end

  describe 'validations' do
    it { should validate_presence_of :email }
    it { should validate_presence_of :password }
  end

  describe 'check current_user and author data' do
    let(:author) { create(:user) }
    let(:user) { create(:user) }
    let(:question) { create(:question, author: author)}

    it 'current_user == author data' do
      expect(author.author_of?(question)).to_not be_falsey
    end

    it 'current_user != author data' do
      expect(user.author_of?(question)).to be_falsey
    end

  end

end
