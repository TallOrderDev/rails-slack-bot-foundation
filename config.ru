# This file is used by Rack-based servers to start the application.
require ::File.expand_path('../config/environment', __FILE__)
require ::File.expand_path('../bot/botboy', __FILE__)

Thread.abort_on_exception = true

SlackRubyBot.configure do |config|
  config.send_gifs = true
end

Thread.new do
  Bot.run
end
run Rails.application
