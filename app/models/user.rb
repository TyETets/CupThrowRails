class User < ApplicationRecord
  # validates :Name, :Email, presence: true    # Replace FILL_IN with the right code.
  # validates FILL_IN, presence: true    # Replace FILL_IN with the right code.

  # attr_accessor :name, :email

  # def initialize(attributes = {})
  #   @name = attributes[:name]
  #   @email = attributes[:email]
  # end

  # def formatted_email
  #   "#{@name} <#{@email}>"
  # end

  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: true

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
