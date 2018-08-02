Rails.application.config.middleware.use OmniAuth::Builder do
   provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
end
#https://github.com/settings/applications/830264
