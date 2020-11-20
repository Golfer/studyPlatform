require 'rails_helper'

describe User, type: :model do
  subject { build(:user, :user_student) }

  describe 'included fields' do
    it { is_expected.to respond_to(:email) }
    it { is_expected.to respond_to(:name) }
    it { is_expected.to respond_to(:surname) }
    it { is_expected.to respond_to(:role) }
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a Email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it { is_expected.to validate_presence_of(:email) }
  end

  describe 'Relations' do
    it { is_expected.to have_many(:companies) }
  end
end