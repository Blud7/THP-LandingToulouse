# LIENS HEROKU : 
# http://thptoulouse.heroku.com
# http://thptoulouse.heroku.com/index1
# http://thptoulouse.heroku.com/index2

# LE GROUPE DE TOULOUSE
## **Thierry**, **Paul T**, **Paul R**, **Patrick**, et notre special-guest venu de terres inconnues: **Axel**

# ANALYTICS

![alt text](https://image.ibb.co/deNDZf/Capture-d-e-cran-2018-11-15-a-17-56-24.png)

# SCRAPPER / SPAMMER / MAILER: 
## Préparer sa campagne en trouvant des "cibles" pour toucher un maximum de monde et avoir un maximum de rendement sur le site.

![alt text](https://image.ibb.co/dnTO0L/Capture-d-e-cran-2018-11-15-a-02-57-02.png)
![alt text](https://image.ibb.co/dDiHS0/Capture-d-e-cran-2018-11-15-a-18-09-35.png)

* Dans le dossier `app/services/` se situe deux fichiers : `start_scrap_provinces.rb` et `start_sending_mails.rb`.
* Le premier, qui peut être lancé en faisant dans la `rails console` : `StartScrapProvinces.perform`, permettra de scrapper puis de sauvegarder les 35 000(!) emails de mairies françaises de chaque département du `10` (l'Aube) au `95` (Ile-de-France) dans la database `Mail` de notre app. **ATTENTION: Tout scrapper prend environ 1h!**
* Le deuxième, qui s'execute en faisant `StartSendingMails.new` permet d'envoyer un mail à chacune de ces mairies présente dans la DB :
``` 
Madame, Monsieur, 
    Nous sommes un groupe d'étudiants à The Hacking Project, une formation en 3 mois pour apprendre le code informatique, qui se déroule dans chaque grande ville de France. Afin de permettre d'expandre notre grande famille, nous avons créé un site qui vous présente cette experience hors-du-commun à cette adresse: \"http://thptoulouse.heroku.com\". N'hésitez pas à jeter un coup d'oeil, chaque petite visite nous aide déjà grandement!
    Cordialement, 
    L'équipe de Toulouse de The Hacking Project. 
```
* Enfin, un bot twitter est intégré au programme, il ne suffit que de lui mettre les paramètres heroku scheduler pour le faire tourner jounalièrement afin qu'il envoit un tweet à dix pages twitter correspondant à la recherche "ecole esc". Si vous remplissez des credentials, le code peut être lancé avec TwitterBot.new.spammy_spam dans l'irb.
