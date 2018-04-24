###Ceci est le contenu de db/seeds.rb
require 'faker'


10.times do
    user = User.create(name: Faker::StarWars.specie)
  end

50.times do
    x = rand(1..10)
    u = User.find(x)
    article = Article.create(user_id: u.id, name: Faker::StarWars.character, body: Faker::StarWars.quote, description: Faker::StarWars.wookiee_sentence)
end

100.times do 
    categorie = Category.create(name: Faker::StarWars.planet)
end
