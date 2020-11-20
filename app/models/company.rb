class Company < ApplicationRecord
  belongs_to :user

  validates :name, :country, :currency, presence: true
  validates :name, uniqueness: { case_sensitive: true }
end
