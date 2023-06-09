# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  session_token   :string           not null
#
class User < ApplicationRecord
    attr_reader :password

    validates :username, :session_token, presence: true, uniqueness: true
    validates :password_digest, presence: { message: 'Password can\'t be blank' }
    validates :password, length: { minimum: 6, allow_nil: true }
  
    before_validation :ensure_session_token

    def self.find_by_credentials(username, password)
        user = User.find(username: username)
        return nil unless user && user.is_password?(password)
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password.new(password_digest).is_password?(password)
    end

    def reset_session_token!
        self.session_token = generate_unique_session_token
        self.save!
        self.session_token
    end
    
    private

    def generate_unique_session_token
        loop do
            ession_token = SecureRandom::urlsafe_base64(16)
            return session_token unless User.exists?(session_token: session_token)
        end
    end
      
    def ensure_session_token
        self.session_token ||= generate_unique_session_token
    end
end

