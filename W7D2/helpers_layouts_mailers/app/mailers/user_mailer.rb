class UserMailer < ApplicationMailer
    default from: '99catsadmin@appacademy.io'
    def welcome_email(user)
        @user = user
        @url  = 'http://example.com/new'
        mail(to: user.email, subject: '99 Cats!')
    end
end
