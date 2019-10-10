# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
config.action_mailer.default_url_options = { host: 'https://bouvet-revetements.cleverapps.io'}
config.action_mailer.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :domain => 'https://bouvet-revetements.cleverapps.io',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
