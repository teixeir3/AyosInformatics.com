class UserMailer < ActionMailer::Base
  default from: "Douglas Teixeira <teixeira@ayosinformatics.com>"

  def activation_email(user)
    @user = user
    @url = activate_users_url(activation_token: @user.activation_token)
  
    mail(to: "#{user.full_name} <#{user.email}>", subject: 'Hello from DougTeixeira.com')
  end

  def password_reset_email(user)
    @user = user
    @url = password_reset_users_url(reset_token: @user.activation_token)
  
    mail(to: "#{user.full_name} <#{user.email}>", subject: 'DougTeixeira.com Password Reset')
  end
  
  def contact_me_email(user, params)
    @user = user
    @params = params
    
    mail(to: "#{user.full_name} <#{user.email}>", subject: 'DougTeixeira.com Inquiry')
  end
  
end
