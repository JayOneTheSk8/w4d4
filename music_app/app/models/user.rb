# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :email, :session_token, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :password, presence: true, if: :password
  validates :password, length: { minimum: 6, allow_nil: true }

  attr_reader :password

  after_initialize :ensure_session_token

  def self.find_by_credentials(attempted_email, attempted_password)
    user = User.find_by(email: attempted_email)
    return nil unless user && user.is_password?(attempted_password)
    user
  end

  def reset_session_token!
    self.update!(session_token: User::generate_session_token)
    self.session_token
  end

  def password=(new_password)
    @password = new_password
    self.password_digest = BCrypt::Password.create(new_password)
  end

  def is_password?(attempted_password)
    encrypted = BCrypt::Password.new(self.password_digest)
    encrypted.is_password?(attempted_password)
  end

  private

  def ensure_session_token
    self.session_token ||= User::generate_session_token
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end
end
