desc "This task is called by the Heroku scheduler add-on"

task :name? => :environment do
  puts "Envois des mails..."
  #task
  puts "Mails envoyés!"
end
