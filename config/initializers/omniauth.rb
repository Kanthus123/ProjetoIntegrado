OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '771427281313-89s43o6o25hcc224d9tu25b8m21shcnj.apps.googleusercontent.com', 'fR1cXNSOT2X43y7HobNyCH49', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}

end
