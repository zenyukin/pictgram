class User < ApplicationRecord
  
  validates :name, presence: true, length: {maximum: 15}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  VALID_PASSWORD_REGEX = /^(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}$/i
  validates :password, format: { with: VALID_PASSWORD_REGEX }
  
  has_secure_password
end
