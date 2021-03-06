# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Seed reset"

Guess.destroy_all
GameSessionSong.destroy_all
GameSession.destroy_all
GameSong.destroy_all
Game.destroy_all
Song.destroy_all
Friendship.destroy_all
User.destroy_all

puts "Creation du joueur"
@joueur = Guest.create!()

puts "Creation de la song"

dernieredansel =  File.read("app/assets/lyrics/dernieredanse.txt")
@dernieredanse = Song.create!(lyrics: dernieredansel, author: "Kyo", title: "Dernière danse", genre: 'rock', year: 2003)

toutoublierl = File.read("app/assets/lyrics/toutoublier.txt")
@toutoublier = Song.create!(lyrics: toutoublierl, author: "Angele",  title:"Tout oublier", genre: 'pop', year: 2018)

auvergnatl  =  File.read("app/assets/lyrics/auvergnat.txt")
@auvergnat = Song.create!(lyrics: auvergnatl, author: "Georges Brassens",title: "Auvergnat", genre: 'classique', year: 1965 )

djadjal =  File.read("app/assets/lyrics/djadja.txt")
@djadja = Song.create!(lyrics: djadjal, author: "Aya Nakamura",title: "Djadja", genre:'rap', year: 2018)

papaoutel =  File.read("app/assets/lyrics/papaoutai.txt")
@papaouta = Song.create!(lyrics: papaoutel, author: "Stromae",title: "Papaoutai", genre:'electro', year: 2013)

doublel =  File.read("app/assets/lyrics/doubleje.txt")
@double = Song.create!(lyrics: doublel, author: "Christophe Willem",title: "Double je", genre:'electro', year: 2007)


jeuneeconl =  File.read("app/assets/lyrics/jeuneetcon.txt")
@jeune = Song.create!(lyrics: jeuneeconl, author: "Saez",title: "Jeune et con", genre:'rock', year: 2007)

roidumondel =  File.read("app/assets/lyrics/lesroisdumonde.txt")
@roidumonde =  Song.create!(lyrics: roidumondel, author: "Romeo et Juliette",title: "Les Rois du monde", genre:'comédie musicale', year: 2007)

confessionnocturnel =  File.read("app/assets/lyrics/confessionnocturne.txt")
@confessionnocturne = Song.create!(lyrics: confessionnocturnel, author: "Diams Vitaa", title: "Confession nocturne", genre:'rap', year: 2006)

caravanel =  File.read("app/assets/lyrics/caravane.txt")
@caravane = Song.create!(lyrics: caravanel, author: "Raphael",title: "Caravane", genre:'moderne', year: 2005)


pholosophiel =  File.read("app/assets/lyrics/maphilosophie.txt")
@philosophie = Song.create!(lyrics: pholosophiel, author: "Amel Bent",title: "Ma Philosophie", genre:'populaire', year: 2004)

parcequonvientdeloin =  File.read("app/assets/lyrics/parcequonvientdeloin.txt")
@parcequonvientde = Song.create!(lyrics: parcequonvientdeloin, author: "Corneille",title: "Parce qu'on vient de loin", genre:'moderne', year: 2002)



quelqunmadil =  File.read("app/assets/lyrics/quelqunmadit.txt")
@quelqunmadit = Song.create!(lyrics: quelqunmadil, author: "Carla Bruni",title: "Quelqu’un m’a dit", genre:'moderne', year: 2002)


tameilleureamii =  File.read("app/assets/lyrics/meilleureamie.txt")
@tameilleurami = Song.create!(lyrics: tameilleureamii, author: "Lorie",title: "je serai ta meilleure amie", genre:'pop', year: 2001)


lotital =  File.read("app/assets/lyrics/lolita.txt")
@lolita = Song.create!(lyrics: lotital, author: "Alizée,",title: "Moi, Lolita", genre:'pop', year: 2000)


mousse =  File.read("app/assets/lyrics/petitbonhomme.txt")
@petibonhommenmousse = Song.create!(lyrics: mousse, author: "Patrick Sebastien", title: "Le petit bonhomme en mousse", genre:'populaire', year: 1999)


allumerlefeu =  File.read("app/assets/lyrics/allumerlefeu.txt")
@allumerlefeu = Song.create!(lyrics: allumerlefeu, author: "Johnny Hallyday", title: "Allumer le feu", genre:'rock', year: 1998)

tribudedana =  File.read("app/assets/lyrics/dana.txt")
@latrubudedana = Song.create!(lyrics: tribudedana, author: "Manau", title: "La tribu de Dana", genre: 'folk', year: 1998)


tomberlachemise =  File.read("app/assets/lyrics/chemise.txt")
@tomblachemise = Song.create!(lyrics: tomberlachemise, author: "Zebda", title: "Tomber la chemise ", genre: 'populaire', year: 1998)


hymne =  File.read("app/assets/lyrics/campagne.txt")
@hymdenocampag = Song.create!(lyrics: hymne, author: "Tryo", title: "L'Hymne de nos campagnes", genre: 'folk', year:  1998)

jtemenneauvent =  File.read("app/assets/lyrics/vent.txt")
@jtemenauvent = Song.create!(lyrics: jtemenneauvent, author: "Louise Attaque",title: "J't'emmène au vent", genre: 'folk', year: 1997)

hommepres =  File.read("app/assets/lyrics/hommepressé.txt")
@hommepresse = Song.create!(lyrics: hommepres, author: "Noir Désir",title:"L'Homme Pressé", genre: 'rock', year: 1996)


miaa =  File.read("app/assets/lyrics/mia.txt")
@mia = Song.create!(lyrics: miaa, author: "IAM",title: "Je danse le MIA", genre: 'rap', year: 1993)

foule =  File.read("app/assets/lyrics/foulesentimentale.txt")
@sentimentale = Song.create!(lyrics: foule, author: "Alain Souchon",title: "Foule sentimentale", genre: 'moderne', year: 1993)

hissezhaut =  File.read("app/assets/lyrics/santiano.txt")
@santiano = Song.create!(lyrics: hissezhaut, author: "Hugues Aufray",title: "Santiano", genre: 'folk', year: 1990)

joe =  File.read("app/assets/lyrics/joeletaxi.txt")
@joeletaxi = Song.create!(lyrics: joe, author: "Vanessa Paradis", title: "Joe le taxi", genre: 'variété', year: 1988)

encore =  File.read("app/assets/lyrics/encoreetencore.txt")
@enecoreencore = Song.create!(lyrics: encore, author: "Francis Cabrel",title: "Encore et encore", genre: 'variété', year: 1985)


mistralgagnant =  File.read("app/assets/lyrics/lemistralgagnant.txt")
@mistralgagnant = Song.create!(lyrics: mistralgagnant, author: "Renaud",title: "Mistral Gagnant", genre: 'chanson française', year: 1985)


lessos =  File.read("app/assets/lyrics/sos.txt")
@sos = Song.create!(lyrics: lessos, author: "Daniel Balavoine",title: "Tous les cris les SOS", genre: 'chanson française', year: 1985)

envolmoi =  File.read("app/assets/lyrics/envolemoi.txt")
@envolemoi = Song.create!(lyrics: envolmoi, author: "Jean Jacques Goldman",title: "Envole-moi", genre: 'chanson française', year: 1984)

marcia =  File.read("app/assets/lyrics/marciabaila.txt")
@marciabaila = Song.create!(lyrics: marcia, author: "Rita Mitsouko",title: "Marcia Baila", genre: 'pop', year: 1984)

conemara =  File.read("app/assets/lyrics/connemara.txt")
@connemara = Song.create!(lyrics: conemara, author: "Michel Sardou",title: "Les Lacs Du Connemara", genre: 'folk', year: 1981)

resist =  File.read("app/assets/lyrics/resiste.txt")
@resiste = Song.create!(lyrics: resist, author: "France Gall",title: "Résiste", genre: 'comédie musicale', year: 1981)

vie =  File.read("app/assets/lyrics/lavienemapprendrien.txt")
@lavienemapprendrien = Song.create!(lyrics: vie, author: "Daniel Balavoine",title: "La vie ne m’apprend rien", genre: 'chanson française', year: 1980)

amourir =  File.read("app/assets/lyrics/jelaimeamourir.txt")
@jelaimemourir = Song.create!(lyrics: amourir, author: "Francis Cabrel",title: "Je l'aime a mourir", genre: 'chanson française', year: 1979)

alexandra =  File.read("app/assets/lyrics/alexandriealexandra.txt")
@alexandrie= Song.create!(lyrics: alexandra, author: "Claude François",title: "Alexandrie, Alexandra", genre: 'pop', year: 1977)

lesud =  File.read("app/assets/lyrics/sud.txt")
@sud = Song.create!(lyrics: lesud, author: "Léo Ferré",title: "Le sud", genre: 'folk', year: 1975)

paroles =  File.read("app/assets/lyrics/parolesparoles.txt")
@parole = Song.create!(lyrics: paroles, author: "Dalida",title: "Paroles paroles", genre: 'classique', year: 1973)

safrancisco =  File.read("app/assets/lyrics/sanfrancisco.txt")
@sanfrancisco = Song.create!(lyrics: safrancisco, author: "Maxime le Forestier",title: "San Francisco", genre: 'folk', year: 1972)

javanais =  File.read("app/assets/lyrics/javanaise.txt")
@javanaise = Song.create!(lyrics: javanais , author: "Serge Gainsbourg",title: "La Javanaise", genre:'classique', year: 1968)


bonnie =  File.read("app/assets/lyrics/bonnieandclyde.txt")
@clyde = Song.create!(lyrics: bonnie, author: "Serge Gainsbourg", title: "Bonnie and Clyde", genre:'classique', year: 1968)


commedabitude =  File.read("app/assets/lyrics/commedabitude.txt")
@commedabit = Song.create!(lyrics: commedabitude , author: "Claude François",title: "Comme d’habitude", genre:'classique', year: 1967)


boem =  File.read("app/assets/lyrics/boheme.txt")
@labohem = Song.create!(lyrics: boem , author: "Charles Aznavour",title: "La Bohème", genre:'classique', year: 1966)

nononon =  File.read("app/assets/lyrics/poupe.txt")
@non = Song.create!(lyrics: nononon, author: "Jean Michel Pollnaref",title: "La poupée qui fait non", genre:'classique', year: 1966)

chantdessirenesl =  File.read("app/assets/lyrics/chantdessirenes.txt")
@chantdessirenes = Song.create!(lyrics: chantdessirenesl, author: "Fréro Delavega",title: "Le Chant des sirènes", genre:'pop', year: 2015)



puts "Creation du game mode"
@solo = Game.create!(name: "Chanson du jour")
@playlist = Game.create!(name: "Playlist")

puts "Creation de la game_song"
@song1 = GameSong.create!(game: @solo, song: @jtemenauvent)

Song.all.each do |song|

GameSong.create!(game: @playlist, song: song)

end


puts "DONE"
