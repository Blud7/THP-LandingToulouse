require 'twitter'
require 'dotenv'
require 'pry'
require 'csv'
require 'nokogiri'
require 'open-uri'
Dotenv.load

class TwitterBot
  def initialize
		#On initialise directement la session avec l'API Twitter
		@session_twitter =
			Twitter::REST::Client.new do |config|
  			config.consumer_key        = ENV['TWITTER_API_KEY']
  			config.consumer_secret     = ENV['TWITTER_API_SECRET']
  			config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
  			config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
			end
      p @session_twitter
	end

  def spammy_spam
    
    @session_twitter.user_search("ecole esc")[0..9].each do |meh|
      puts "@#{meh.uri.to_s.split('/').last}"
      #@session_twitter.update("Viens connaitre thp, c'est bien thp @#{meh.uri.to_s.split('/').last}")
    end
  end
end

meh = TwitterBot.new
meh.spammy_spam
