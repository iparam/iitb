ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "railstech.com",
  :user_name            => "rails.java",
  :password             => "",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
ActionMailer::Base.smtp_settings = {
  :address => "smtp.sendgrid.net",
  :port => 587,
  :domain => "railstech.com",
  :authentication => :plain,
  :user_name => "amardaxini@gmail.com",
  :password => "thakkar!",
  :enable_starttls_auto => true

}
ActionMailer::Base.default_url_options[:host] = "iitb.heroku.com"
#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
