Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_DEFAULT_CLIENT_ID'],
                           ENV['GOOGLE_DEFAULT_CLIENT_SECRET'],
                           scope: 'email,profile'

  provider :facebook, ENV['FACEBOOK_APP_ID'],
                      ENV['FACEBOOK_APP_SECRET'],
                      scope: 'email,public_profile'
end
