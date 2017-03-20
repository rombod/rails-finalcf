class MessageMailer < ActionMailer::Base

  default from: "Your Mailer <noreply@farauto.com>"
  default to: "Farauto <mahmood.madgidi@farauto.ca>"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end

end