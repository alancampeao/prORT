class UserMailer < ApplicationMailer
	default from: 'prort3@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Bem vindo ao prORT!')
  end
end
