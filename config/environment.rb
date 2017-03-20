# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!


config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  host = ' https://stark-reaches-29772.herokuapp.com/'
  config.action_mailer.default_url_options = { host: host }
  ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => ENV['SENDGRID_USERNAME'],
    :password       => ENV['SENDGRID_PASSWORD'],
    :domain         => 'heroku.com',
    :enable_starttls_auto => true
  }

