class Signup < ActionMailer::Base
    default from: 'no-reply@prORT.ort'
    
    def confirm_email (user)
        @user = user
        @confirmation_link = root_url
        
        mail({
            to: user.email,
            bcc: ['sign ups <signups@prORT.ort'],
            subject: I18n.t(signup.confirm_email.subject)
        })
    end
end