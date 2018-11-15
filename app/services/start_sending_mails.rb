require 'gmail'
require 'googleauth'
require 'gmail_xoauth'
require 'fileutils'
#require_relative 'db_interface'
require 'dotenv'

class StartSendingMails
    
      def initialize
          @contacts = Mail.all.map(&:email)
          # On récupère les contacts dans la DB
          @adresse_mail = 'thp.toulouse@gmail.com'
          @mdp = 'thptoulouse31'
    
          send_emails #appel de la méthode pour envoyer les mails

      end
    
    # Cette méthode nous permet de se connecter au compte Gmail et d'envoyer un mail aux adresses mails présentes dans la DB
      def send_mail(contact)
        gmail = Gmail.connect!(@adresse_mail,@mdp)
        gmail.deliver do
          to contact
          subject " Test "
          html_part do
            content_type 'text/html; charset=UTF-8'
             body
              "Bonjour,</br>
                   Test 1234</br>"
          end
        end
      end

      def send_emails
        # cette méthode nous permet d'envoyer les mails en utilisant la méthode send_mail_to_townhall et le fichier contacts.json
        @contacts.each do |contact|
          send_mail(contact)
          puts "Email envoyé"
        end
    end
    
    end


