# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Booking.destroy_all
Activity.destroy_all
User.destroy_all

luka = User.create!(
  username: "Luka",
  date_of_birth: Date.new(1996, 11, 18),
  email: "lulu@gmail.com",
  password: "lukaluka",
  status: "Débutant"
)
 luka.photo.attach(io: URI.open('https://d26jy9fbi4q9wx.cloudfront.net/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBOXpOQWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--249e6cf033940330e883234e4c0ff8fff28ed954/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2hwQWNocEFjaDdCam9KWTNKdmNEb09ZWFIwWlc1MGFXOXUiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--b67d9ded4d28d0969fbb98b4c21b79257705a99a/Luka13014.jpg'), filename: 'luka.jpg')

jeremy = User.create!(
  username: "Jeremy",
  date_of_birth: Date.new(1988, 2, 3),
  email: "jeje@gmail.com",
  password: "123456",
  status: "Avancé"
)
 jeremy.photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/168118304?v=4'), filename: 'jeremy.jpg')

valentine = User.find_or_create_by!(
  username: "Valentine",
  date_of_birth: Date.new(2000, 8, 14),
  email: "valou@gmail.com",
  password: '123456',
  status: "Avancé"
)
valentine.photo.attach(io: URI.open('https://d26jy9fbi4q9wx.cloudfront.net/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBOTNOQWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--feb2c51c40227bc935bd6801d0436df12a4c553b/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2hwQWNocEFjaDdCam9KWTNKdmNEb09ZWFIwWlc1MGFXOXUiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--b67d9ded4d28d0969fbb98b4c21b79257705a99a/Valouelo.jpg'), filename: 'valentine.jpg')

lou = User.create!(
  username: "Lou",
  date_of_birth: Date.new(2000, 4, 18),
  email: "loulou@gmail.com",
  password: "123456",
  status: "Intermediaire"
)
 lou.photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/168352119?v=4'), filename: 'lou.jpg')

wakeboard = Activity.create!(
  title: "Wakeboard",
  location: "Cassis",
  capacity: 4,
  name: "Luka",
  price: 35,
  level: "Débutant",
  category: "Nautique",
  duration: 6,
  description: "Journée wakeboard et apéro",
  user_id: luka.id,
  date: DateTime.new(2024, 6, 25, 14, 0)
)
 wakeboard.photo.attach(io: URI.open('https://t3.ftcdn.net/jpg/03/97/46/06/360_F_397460693_xTbghiaiQv48vu5AzubegwGcFWNwFpv3.jpg'),
                        filename: 'wakeboard.jpg')

surf = Activity.create!(
  title: "Surf",
  location: "Lacanau",
  capacity: 6,
  name: "Valentine",
  price: 25,
  level: "Débutant",
  category: "Nautique",
  duration: 8,
  description: "Initiation surf",
  user_id: valentine.id,
  date: DateTime.new(2024, 6, 28, 9, 0)
)
 surf.photo.attach(io: URI.open('https://static8.depositphotos.com/1370441/861/i/450/depositphotos_8618154-stock-photo-surfer.jpg'),
                   filename: 'surf.jpg')

ski = Activity.create!(
  title: "Ski",
  location: "Avoriaz",
  capacity: 2,
  name: "Jeremy",
  price: 50,
  level: "intermédiaire",
  category: "ski",
  duration: 8,
  description: "journée de ski alpin",
  user_id: jeremy.id,
  date: DateTime.new(2024, 1, 15, 10, 0)
)
ski.photo.attach(io: URI.open('https://img.freepik.com/photos-gratuite/snowboard-pour-hommes-dans-aventure-extreme-sports-hiver-ai-generative_188544-33396.jpg'),
                 filename: 'ski.jpeg')

randonnee = Activity.create!(
  title: "Randonnée",
  location: "Queyras",
  capacity: 5,
  name: "Luka",
  price: 25,
  level: "Débutant",
  category: "Randonnée",
  duration: 5,
  description: "Randonnée en montagne avec guide",
  user_id: luka.id,
  date: DateTime.new(2024, 5, 20, 9, 0)
)
randonnee.photo.attach(io: URI.open('https://st.depositphotos.com/2270781/2435/i/450/depositphotos_24359265-stock-photo-hiking-in-the-mountains.jpg'),
                       filename: 'randonnée.jpeg')

escalade = Activity.create!(
  title: "Escalade",
  location: "Marseille",
  capacity: 4,
  name: "Jeremy",
  price: 40,
  level: "Avancé",
  category: "Escalade",
  duration: 7,
  description: "Escalade en falaise avec équipement fourni",
  user_id: jeremy.id,
  date: DateTime.new(2024, 7, 10, 13, 0)
)
escalade.photo.attach(io: URI.open('https://ecolosport.fr/wp-content/uploads/2020/07/Escalade.jpg'),
                      filename: 'escalade.jpeg')

surf = Activity.create!(
  title: "Surf",
  location: "Lacanau",
  capacity: 5,
  name: "Valentine",
  price: 30,
  level: "Avancé",
  category: "Nautique",
  duration: 4,
  description: "Perfectionnement au surf",
  user_id: valentine.id,
  date: DateTime.new(2024, 8, 12, 15, 0)
)
surf.photo.attach(io: URI.open('https://static8.depositphotos.com/1370441/861/i/450/depositphotos_8618154-stock-photo-surfer.jpg'),
                  filename: 'surf.jpeg')

foot = Activity.create!(
  title: "Foot",
  location: "Marseille",
  capacity: 3,
  name: "Lou",
  price: 20,
  level: "Intermédiaire",
  category: "Sport collectif",
  duration: 3,
  description: "Match de football entre amis et apéro en fin de partie",
  user_id: lou.id,
  date: DateTime.new(2024, 6, 24, 11, 0)
)
foot.photo.attach(io: URI.open('https://www.ownsport.fr/blog/wp-content/uploads/2018/02/Football-1024x576.jpg'),
                  filename: 'foot.jpeg')

kayak = Activity.create!(
  title: "Kayak",
  location: "Marseille",
  capacity: 10,
  name: "Luka",
  price: 45,
  level: "Avancé",
  category: "Nautique",
  duration: 5,
  description: "Sortie en kayak de mer",
  user_id: luka.id,
  date: Date.new(2024, 7, 5, 16, 0)
)
kayak.photo.attach(io: URI.open('https://t3.ftcdn.net/jpg/02/81/86/14/360_F_281861435_cOLQzBJAj05lcAFVxgmDfg7D2pY2D3tf.jpg'),
                   filename: 'kayak.jpeg')


snowboard = Activity.create!(
  title: "Snowboard",
  location: "Avoriaz",
  capacity: 3,
  name: "Lou",
  price: 35,
  level: "Débutant",
  category: "Ski",
  duration: 6,
  description: "Initiation au snowboard et bataille de boules de neige",
  user_id: lou.id,
  date: DateTime.new(2024, 2, 10, 12, 0)
)
snowboard.photo.attach(io: URI.open('https://images.photowall.com/products/52932/snowboard-method-grab.jpg?h=699&q=85'),
                       filename: 'snowboard.jpg')

randonnee = Activity.create!(
  title: "Randonnée",
  location: "Queyras",
  capacity: 4,
  name: "Jeremy",
  price: 25,
  level: "Intermédiaire",
  category: "Randonnée",
  duration: 5,
  description: "Randonnée en forêt et découverte de la faune et la flore",
  user_id: jeremy.id,
  date: DateTime.new(2024, 9, 14, 14, 0)
)
randonnee.photo.attach(io: URI.open('https://st.depositphotos.com/2270781/2435/i/450/depositphotos_24359265-stock-photo-hiking-in-the-mountains.jpg'),
                       filename: 'randonnee.jpeg')

escalade = Activity.create!(
  title: "Escalade",
  location: "Cassis",
  capacity: 2,
  name: "Jeremy",
  price: 40,
  level: "Avancé",
  category: "Escalade",
  duration: 8,
  description: "Escalade en bloc",
  user_id: jeremy.id,
  date: DateTime.new(2024, 7, 22, 10, 0)
)
escalade.photo.attach(io: URI.open('https://blog.ekosport.fr/wp-content/uploads/2020/05/camp_escalade-ortovox.jpg'),
                      filename: 'escalade.jpeg')

beachvolley = Activity.create!(
  title: "BeachVolley",
  location: "Cassis",
  capacity: 4,
  name: "Lou",
  price: 30,
  level: "Débutant",
  category: "Sport collectif",
  duration: 4,
  description: "Tournoi de beach volley",
  user_id: lou.id,
  date: DateTime.new(2024, 6, 30, 15, 0)
)
beachvolley.photo.attach(io: URI.open('https://media.sudouest.fr/10887791/1200x-1/arcachonetsud-bassin-f17fb1f5f1fe41918a8c06dde91c5ab7-160341-ph0.jpg'),
                         filename: 'beach-volley.jpeg')

Booking.create!(
  user_id: luka.id,
  activity_id: kayak.id
)
