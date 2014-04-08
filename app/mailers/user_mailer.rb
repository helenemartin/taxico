class UserMailer < ActionMailer::Base

  def welcome(user)
    @user = user
    mail to: user.email, subject: 'Welcome!', from: "do-not-reply@bots-inc.com"
  end

end
