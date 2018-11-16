require 'twitter'
require 'dotenv'
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
	end

  def spammy_spam
    @session_twitter.user_search("ecole esc")[0..9].each do |meh|
      #Pour obtenir le handle twitter on prend l'uri, et on prend la dernière partie séparée par un '/' qui contient le handle
      @session_twitter.update("@#{meh.uri.to_s.split('/').last}, viens connaitre The Hacking Project, c'est bien thp. https://landingtoulouse.herokuapp.com/home/index1 ")
    end
  end
end
