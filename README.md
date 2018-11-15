# Organisation

* Front : Thierry, Patrick, Paul Rivière 
* Acquisition : Axel, Paul T-D


# SCRAPPER / SPAMMER / MAILER: 
# Préparer sa compagne en trouvant des "cibles" pour toucher un maximum de monde et avoir un maximum de rendement sur le site.

* Dans le dossier `app/services/` se situe deux fichiers : `start_scrap_provinces.rb` et `start_sending_mails.rb`.
* Le premier, qui peut être lancé en faisant dans la `rails console` : `StartScrapProvinces.perform`, permettra de scrapper puis de sauvegarder les 35 000(!) emails de mairies françaises de chaque département du `10` (l'Aube) au `95` (Ile-de-France) dans la database `Mail` de notre app.
* Le deuxième, qui s'execute en faisant `StartSendingMails.new` permet d'envoyer un mail à chacune de ces mairies présente dans la DB :
`Madame, Monsieur, 
    Nous sommes un groupe d'étudiants à The Hacking Project, une formation en 3 mois pour apprendre le code informatique, qui se déroule dans chaque grande ville de France. Afin de permettre d'expandre notre grande famille, nous avons créé un site qui vous présente cette experience hors-du-commun à cette adresse: proutpataprout.com. N'hésitez pas à jeter un coup d'oeil, chaque petite visite nous aide déjà grandement!
    Cordialement, 
    L'équipe de Toulouse de The Hacking Project. `
# Résultat obtenu : 
