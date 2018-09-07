require 'ffaker'

Advertisement.destroy_all

Advertisement.create!(
  title: "Figurines Mario et Luigi",
  author: FFaker::NameFR.name,
  email: FFaker::Internet.email,
  phone: FFaker::PhoneNumberFR.phone_number,
  content: "Je vends un lot de 2 figurines Mario et Luigi. En très bon état, elles n'ont jamais été maltraité.",
  price: 19
).image.attach(
  io: File.open(Rails.root.join("db", "seeds", "action-figures-art-boy-163036.jpg")),
  filename: "image.jpg",
  content_type: "image/jpg"
)

Advertisement.create!(
  title: "Peluche éléphant",
  author: FFaker::NameFR.name,
  email: FFaker::Internet.email,
  phone: FFaker::PhoneNumberFR.phone_number,
  content: "Cause allergie aux poils gris, vends peluche éléphant pour enfant ou adulte en manque d'affection. État neuf.",
  price: 5.50
).image.attach(
  io: File.open(Rails.root.join("db", "seeds", "cute-plush-toy-stuffed-animal-47335.jpg")),
  filename: "image.jpg",
  content_type: "image/jpg"
)

Advertisement.create!(
  title: "Vespa 50cc",
  author: FFaker::NameFR.name,
  email: FFaker::Internet.email,
  phone: FFaker::PhoneNumberFR.phone_number,
  content: "Ah... La dolce vita... Si tu veux te la jouer bellâtre italien, cette superbe Vespa 50cc est ce qu'il te faut ! Faible kilométrage, sans aucune rayure, je la vends parce que maintenant je me déplace en gyrocoptère.",
  price: 1_990
).image.attach(
  io: File.open(Rails.root.join("db", "seeds", "blur-city-classic-240222.jpg")),
  filename: "image.jpg",
  content_type: "image/jpg"
)

Advertisement.create!(
  title: "Peluche crocodile",
  author: FFaker::NameFR.name,
  email: FFaker::Internet.email,
  phone: FFaker::PhoneNumberFR.phone_number,
  content: "Vends ce mignon petit crocodile. Douceur garantie.",
  price: 3
).image.attach(
  io: File.open(Rails.root.join("db", "seeds", "cute-plush-toy-stuffed-animal-63637.jpg")),
  filename: "image.jpg",
  content_type: "image/jpg"
)

Advertisement.create!(
  title: "iMac",
  author: FFaker::NameFR.name,
  email: FFaker::Internet.email,
  phone: FFaker::PhoneNumberFR.phone_number,
  content: "iMac Retina 27 pouces, fin 2014. Processeur : 4 Ghz Intel Core i7. Mémoire : 32 Go 1600 MHz DDR3. Graphismes : AMD Radeon R9 M295X 4096 Mo. Très bon état.",
  price: 1_490.95
).image.attach(
  io: File.open(Rails.root.join("db", "seeds", "business-communication-computer-265127.jpg")),
  filename: "image.jpg",
  content_type: "image/jpg"
)

Advertisement.create!(
  title: "Fiat 500",
  author: FFaker::NameFR.name,
  email: FFaker::Internet.email,
  phone: FFaker::PhoneNumberFR.phone_number,
  content: "Fiat 500 année 1969. Contrôle technique OK. 128 000 km seulement !",
  price: 6_780
).image.attach(
  io: File.open(Rails.root.join("db", "seeds", "car-classic-car-old-69020.jpg")),
  filename: "image.jpg",
  content_type: "image/jpg"
)

Advertisement.create!(
  title: "Vélo de ville",
  author: FFaker::NameFR.name,
  email: FFaker::Internet.email,
  phone: FFaker::PhoneNumberFR.phone_number,
  content: "Vends vélo de ville. Porte-bagages inclus pour emmener mamie au marché le dimanche matin !",
  price: 249
).image.attach(
  io: File.open(Rails.root.join("db", "seeds", "bicycle-bike-black-326678.jpg")),
  filename: "image.jpg",
  content_type: "image/jpg"
)

Advertisement.create!(
  title: "Voiture volée",
  author: FFaker::NameFR.name,
  email: FFaker::Internet.email,
  phone: FFaker::PhoneNumberFR.phone_number,
  content: "J'ai volé cette voiture cette nuit, mais en fait la couleur ne plaît pas à ma femme. Du coup je la vends au plus offrant. J'accèpte les paiements en Bitcoins.",
  price: 12_500
).image.attach(
  io: File.open(Rails.root.join("db", "seeds", "automobile-bmw-car-100650.jpg")),
  filename: "image.jpg",
  content_type: "image/jpg"
)

Advertisement.create!(
  title: "Maison hantée",
  author: FFaker::NameFR.name,
  email: FFaker::Internet.email,
  phone: FFaker::PhoneNumberFR.phone_number,
  content: "Pour cause de présence de fantômes, je donne cette maison construite sur un ancien cimetière indien.",
  price: 0
).image.attach(
  io: File.open(Rails.root.join("db", "seeds", "architecture-building-driveway-186077.jpg")),
  filename: "image.jpg",
  content_type: "image/jpg"
)

Advertisement.create!(
  title: "Lit design",
  author: FFaker::NameFR.name,
  email: FFaker::Internet.email,
  phone: FFaker::PhoneNumberFR.phone_number,
  content: "Superbe lit 190 x 160 cm. Payez le design, pas le confort ! Vue panoramique non incluse.",
  price: 3_895.95
).image.attach(
  io: File.open(Rails.root.join("db", "seeds", "bed-bedroom-clean-775219.jpg")),
  filename: "image.jpg",
  content_type: "image/jpg"
)

Advertisement.find_each do |advertisement|
  advertisement.update_columns(
    created_at: rand(60 * 60 * 24 * 10).seconds.ago
  )
end
