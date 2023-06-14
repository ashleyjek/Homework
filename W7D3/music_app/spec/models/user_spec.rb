require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.create!(email: 'lilly_llama', password: 'password') }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
  it { should validate_length_of(:password).is_at_least(6) }

  describe 'password encryption' do
    it 'does not save passwords to the database' do
      User.create!(email: 'sunny_d', password: 'password')
      sunny = User.find_by(email: 'sunny_d')
      expect(sunny.password).not_to be('password')
    end

    context 'saves passwords properly' do
      it 'encrypts the password using BCrypt' do
        expect(BCrypt::Password).to receive(:create)
        User.new(email: 'jack_bruce', password: 'abcdef')
      end

      it 'properly sets the password reader' do
        user = User.new(email: 'jack_bruce', password: 'abcdef')
        expect(user.password).to eq('abcdef')
      end
    end
  end

end
