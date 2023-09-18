OpenAI.configure do |config|
  config.access_token = ENV["OPENAI_ACCESS_TOKEN"] || Rails.application.credentials.openai.access_token
  config.organization_id = ENV["OPENAI_ORGANIZATION_ID"] || Rails.application.credentials.openai.organization_id
end
