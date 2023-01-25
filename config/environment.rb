# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# AWS setup
ENV['AWS_ACCESS_KEY_ID'] = Rails.application.credentials.aws[:access_key_id]
ENV['AWS_SECRET_ACCESS_KEY'] = Rails.application.credentials.aws[:secret_access_key]
ENV['AWS_REGION'] = 'us-east-1'
