require 'rails_helper'

describe Company, type: :model do
  subject { build(:company) }

  describe 'included fields' do
    it { is_expected.to respond_to(:name) }
    it { is_expected.to respond_to(:country) }
    it { is_expected.to respond_to(:currency) }
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  end

  describe 'Relations' do
    it { is_expected.to belong_to(:user) }
  end
end
