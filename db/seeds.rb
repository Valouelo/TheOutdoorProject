# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Review.destroy_all
Message.destroy_all
Chatroom.destroy_all
Booking.destroy_all
Activity.destroy_all
Category.destroy_all
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

valentine = User.create!(
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

mountain = Category.create(name: "Montagne")
mountain.photo.attach(io: URI.open('https://images.unsplash.com/photo-1565992441121-4367c2967103?q=80&w=2023&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'), filename: 'mountain.jpg')

escalade = Category.create(name: "Escalade")
escalade.photo.attach(io: URI.open('https://images.unsplash.com/photo-1601224748193-d24f166b5c77?q=80&w=2864&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'), filename: 'escalade.jpg')

rando = Category.create(name: "Rando")
rando.photo.attach(io: URI.open('https://images.unsplash.com/photo-1533240332313-0db49b459ad6?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'), filename: 'rando.jpg')

nautique = Category.create(name: "Nautisme")
nautique.photo.attach(io: URI.open('https://images.unsplash.com/photo-1523606772308-64a28db0ef2c?q=80&w=2864&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'), filename: 'nautique.jpg')

running = Category.create(name: "Running")
running.photo.attach(io: URI.open('https://images.unsplash.com/photo-1522040942177-269680274214?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHJ1bm5lcnxlbnwwfHwwfHx8MA%3D%3D'), filename: 'running.jpg')

sportco = Category.create(name: "SportCo")
sportco.photo.attach(io: URI.open('https://images.unsplash.com/photo-1562321157-5fd366036de8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjN8fHNwb3J0JTIwY29sbGVjdGlmfGVufDB8fDB8fHww'), filename: 'sportco.jpg')

parachute = Activity.new(
  title: "Parachute",
  location: "Nice",
  capacity: 4,
  price: 350,
  level: "débutant",
  duration: 6,
  description: "Baptême en tandem",
  user_id: luka.id,
  date: DateTime.new(2024, 6, 25, 14, 0)
)

parachute.category = mountain
parachute.user = valentine
parachute.save
parachute.photo.attach(io: URI.open('https://images.unsplash.com/photo-1588101847617-4a438d2abea2?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fHBhcmFjaHV0ZXxlbnwwfHwwfHx8MA%3D%3D'), filename: 'wakeboard.jpg')
Chatroom.create!(activity: parachute)

surf = Activity.new(
  title: "Surf",
  location: "Biarritz",
  capacity: 6,
  price: 25,
  level: "Débutant",
  duration: 8,
  description: "Initiation surf",
  user_id: valentine.id,
  date: DateTime.new(2024, 6, 28, 9, 0)
)
surf.category = nautique
surf.user = lou
surf.save
surf.photo.attach(io: URI.open('https://static8.depositphotos.com/1370441/861/i/450/depositphotos_8618154-stock-photo-surfer.jpg'),
                  filename: 'surf.jpg')
Chatroom.create!(activity: surf)


ski = Activity.new(
  title: "Ski",
  location: "Avoriaz",
  capacity: 2,
  price: 50,
  level: "intermédiaire",
  duration: 8,
  description: "Journée de ski alpin",
  user_id: jeremy.id,
  date: DateTime.new(2024, 1, 15, 10, 0)
)

ski.category = mountain
ski.user = jeremy
ski.save
ski.photo.attach(io: URI.open('https://img.freepik.com/photos-gratuite/snowboard-pour-hommes-dans-aventure-extreme-sports-hiver-ai-generative_188544-33396.jpg'),
                 filename: 'ski.jpeg')
Chatroom.create!(activity: ski)


randonnee = Activity.new(
  title: "Randonnée",
  location: "Queyras",
  capacity: 5,
  price: 25,
  level: "Débutant",
  duration: 5,
  description: "Randonnée en montagne avec guide",
  user_id: luka.id,
  date: DateTime.new(2024, 5, 20, 9, 0)
)

randonnee.category = rando
randonnee.user = luka
randonnee.save
randonnee.photo.attach(io: URI.open('https://st.depositphotos.com/2270781/2435/i/450/depositphotos_24359265-stock-photo-hiking-in-the-mountains.jpg'),
                       filename: 'randonnée.jpeg')
Chatroom.create!(activity: randonnee)

grimpe = Activity.new(
  title: "Escalade",
  location: "Marseille",
  capacity: 4,
  price: 40,
  level: "Avancé",
  duration: 7,
  description: "Escalade en falaise avec équipement fourni",
  user_id: jeremy.id,
  date: DateTime.new(2024, 7, 10, 13, 0)
)

grimpe.category = escalade
grimpe.user = valentine
grimpe.save
grimpe.photo.attach(io: URI.open('https://ecolosport.fr/wp-content/uploads/2020/07/Escalade.jpg'),
                    filename: 'grimpe.jpeg')
Chatroom.create!(activity: grimpe)

surf = Activity.new(
  title: "Surf",
  location: "Narbonne",
  capacity: 5,
  price: 15,
  level: "Avancé",
  duration: 4,
  description: "Perfectionnement au surf",
  user_id: valentine.id,
  date: DateTime.new(2024, 8, 12, 15, 0)
)
surf.category = nautique
surf.user = luka
surf.save
surf.photo.attach(io: URI.open('https://static8.depositphotos.com/1370441/861/i/450/depositphotos_8618154-stock-photo-surfer.jpg'),
                  filename: 'surf.jpeg')
Chatroom.create!(activity: surf)

foot = Activity.new(
  title: "Foot",
  location: "Marseille",
  capacity: 3,
  price: 20,
  level: "Intermédiaire",
  duration: 3,
  description: "Match de football entre amis",
  user_id: lou.id,
  date: DateTime.new(2024, 6, 24, 11, 0)
)

foot.category = sportco
foot.user = jeremy
foot.save
foot.photo.attach(io: URI.open('https://www.ownsport.fr/blog/wp-content/uploads/2018/02/Football-1024x576.jpg'),
                  filename: 'foot.jpeg')
Chatroom.create!(activity: foot)

kayak = Activity.new(
  title: "Kayak",
  location: "Marseille",
  capacity: 10,
  price: 45,
  level: "Avancé",
  duration: 5,
  description: "Sortie en kayak de mer",
  user_id: luka.id,
  date: DateTime.new(2024, 7, 5, 16, 0)
)

kayak.category = nautique
kayak.user = jeremy
kayak.save
kayak.photo.attach(io: URI.open('https://t3.ftcdn.net/jpg/02/81/86/14/360_F_281861435_cOLQzBJAj05lcAFVxgmDfg7D2pY2D3tf.jpg'),
                   filename: 'kayak.jpeg')
Chatroom.create!(activity: kayak)

snowboard = Activity.new(
  title: "Snowboard",
  location: "Gap",
  capacity: 3,
  price: 35,
  level: "Débutant",
  duration: 6,
  description: "Initiation au snowboard",
  user_id: lou.id,
  date: DateTime.new(2024, 2, 10, 12, 0)
)

snowboard.category = mountain
snowboard.user = lou
snowboard.save
snowboard.photo.attach(io: URI.open('https://images.photowall.com/products/52932/snowboard-method-grab.jpg?h=699&q=85'),
                       filename: 'snowboard.jpg')
Chatroom.create!(activity: snowboard)

randonnee_1 = Activity.new(
  title: "Randonnée",
  location: "Aubagne",
  capacity: 4,
  name: "Jeremy",
  price: 25,
  level: "Intermédiaire",
  duration: 5,
  description: "Randonnée en forêt",
  user_id: jeremy.id,
  date: DateTime.new(2024, 9, 14, 14, 0)
)

randonnee_1.category = rando
randonnee_1.user = valentine
randonnee_1.save
randonnee_1.photo.attach(io: URI.open('https://st.depositphotos.com/2270781/2435/i/450/depositphotos_24359265-stock-photo-hiking-in-the-mountains.jpg'),
                       filename: 'randonnee.jpeg')
Chatroom.create!(activity: randonnee_1)

grimpe_1 = Activity.new(
  title: "Escalade",
  location: "Cassis",
  capacity: 2,
  price: 40,
  level: "Avancé",
  duration: 8,
  description: "Escalade en bloc",
  user_id: jeremy.id,
  date: DateTime.new(2024, 7, 22, 10, 0)
)

grimpe_1.category = escalade
grimpe_1.user = lou
grimpe_1.save
grimpe_1.photo.attach(io: URI.open('https://blog.ekosport.fr/wp-content/uploads/2020/05/camp_escalade-ortovox.jpg'),
                    filename: 'grimpe.jpeg')
Chatroom.create!(activity: grimpe_1)

beachvolley = Activity.new(
  title: "BeachVolley",
  location: "Cassis",
  capacity: 4,
  price: 30,
  level: "Débutant",
  duration: 4,
  description: "Tournoi de beach volley",
  user_id: lou.id,
  date: DateTime.new(2024, 6, 30, 15, 0)
)

beachvolley.category = sportco
beachvolley.user = jeremy
beachvolley.save
beachvolley.photo.attach(io: URI.open('https://media.sudouest.fr/10887791/1200x-1/arcachonetsud-bassin-f17fb1f5f1fe41918a8c06dde91c5ab7-160341-ph0.jpg'),
                         filename: 'beach-volley.jpeg')
Chatroom.create!(activity: beachvolley)

Booking.create!(
  user_id: luka.id,
  activity_id: kayak.id
)

review = Review.create!(user: luka, activity: foot, content: "Super activité, je recommande !", rating: 5)
