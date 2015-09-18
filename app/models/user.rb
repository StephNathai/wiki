class User < ActiveRecord::Base
  has_secure_password
  has_many :articles

  validates :first_name, :last_name, :email, presence: true
end
