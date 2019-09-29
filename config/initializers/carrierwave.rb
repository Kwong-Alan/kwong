# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_public = false
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AKIAQQSMBKBJBCRTOY4F"],        # required
    aws_secret_access_key: ENV["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"],        # required
  }
  config.fog_directory  = ENV["my-bucket-thing"]              # required
end