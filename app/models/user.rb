require 'bcrypt'

class User < ApplicationRecord
  include BCrypt

  validates :first_name, :last_name, :email, :password_hash, presence: true
  validates :email, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    if user.password == password
      return user
    else
      nil
    end
  end
end
