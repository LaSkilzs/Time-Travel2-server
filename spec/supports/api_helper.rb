module ApiHelper
  include Rack::Test::Methods

  def app
    Rails.application
  end
end

Rspec.configure do |config|
  config.include ApiHelper, :type => api
end