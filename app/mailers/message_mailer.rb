class MessageMailer < ActionMailer::Base

  default from: "Your Mailer <noreply@yourdomain.com>"
  default to: "mahmood madgidi <mahmood.madgidi@farauto.ca>"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end

end