Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '35e4960cea571ed15cf3', '34bb4b37ab6c9d90b859c88ce25214ca928f0c85'

end
