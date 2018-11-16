desc "This task is called by the Heroku scheduler add-on"
task :updata_twitter => :environment do
  puts "Updating twitter"
  TwitterBot.new.spammy_spam
  puts "Tweets done"
end
