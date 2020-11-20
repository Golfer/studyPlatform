class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  has_many :companies
  enum role: %I[student teacher]

  validates :name, :surname, presence: true
  validate :password_complexity
  validates :email, presence: true, uniqueness: true, length: { maximum: 64 }

  def password_complexity
    return if password.blank? || password =~ /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/

    errors.add :password, 'Complexity requirement. Minimum eight characters, at least 1 letter and 1 number'
  end

  def full_name
    [name, surname].compact.collect(&:capitalize).join(' ').strip
  end
end
