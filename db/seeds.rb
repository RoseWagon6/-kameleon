puts 'Cleaning all tables of the database...'
Booking.destroy_all
Costume.destroy_all
User.destroy_all


puts 'Creating users'

bob = User.create!(
  email: "bob.lean@test.com",
  password: "123456",
  first_name: "Robert",
  last_name: "Lean",
  avatar: File.open(Rails.root.join("db/fixtures/users/bob.jpg")),
  city: "Nantes",
  phone: "0203040506"
  )

felindra = User.create!(
  email: "felindra.boyard@test.com",
  password: "azerty",
  first_name: "Felindra",
  last_name: "Boyard",
  avatar: File.open(Rails.root.join("db/fixtures/users/felindra.jpg")),
  city: "Paris",
  phone: "0103040506"
  )

john = User.create!(
  email: "john.attan@test.com",
  password: "123456",
  first_name: "John",
  last_name: "Attan",
  avatar: File.open(Rails.root.join("db/fixtures/users/john.jpg")),
  city: "Lyon",
  phone: "0403040506"
  )


puts 'Creating costumes for owners'

ladybug = Costume.create!(
  name: "Wonderfull ladybug !!!",
  price: 10,
  description: "A Wonderfull costume, really easy to wear. One antena is off.",
  size: "3",
  category: "animals",
  image: File.open(Rails.root.join("db/fixtures/costumes/ladybug.jpg")),
  city: "Nantes",
  availability: true,
  user: john
  )

pirate = Costume.create!(
  name: "pirate",
  price: 35,
  description: "Be the queen of the seas thanks to this costume. Very good state of conservation.",
  size: "S",
  category: "celebrations",
  image: File.open(Rails.root.join("db/fixtures/costumes/pirate.jpg")),
  city: "Paris",
  availability: false,
  user: john
  )

unicorn = Costume.create!(
  name: "unicorn (hey hey)",
  price: 59,
  description: "Ride the unicorn...",
  size: "XXL",
  category: "animals",
  image: File.open(Rails.root.join("db/fixtures/costumes/unicorn.jpg")),
  city: "Lyon",
  availability: true,
  user: john
  )

jasmine = Costume.create!(
  name: "Jasmine in blue",
  price: 12,
  description: "Have a blue dream with Aladdin. Old costume, but not too much wholes.",
  size: "8",
  category: "cartoon",
  image: File.open(Rails.root.join("db/fixtures/costumes/jasmine.jpg")),
  city: "Marseille",
  availability: true,
  user: felindra
  )


puts 'Creating bookings for users'

booking1 = Booking.create!(
  user: bob,
  costume: unicorn,
  start_on: "2018-04-25",
  end_on: "2018-04-26",
  status: "accepted",
  price: 49,
  message: "Hey! Thanks! :)"
  )

booking2 = Booking.create!(
  user: bob,
  costume: jasmine,
  start_on: "2018-08-03",
  end_on: "2018-08-13",
  status: "pending",
  price: 10,
  message: "Do you have this costume also in another size?"
  )

booking3 = Booking.create!(
  user: felindra,
  costume: pirate,
  start_on: "2018-08-03",
  end_on: "2018-08-13",
  status: "pending",
  price: 35,
  message: ""
  )

booking4 = Booking.create!(
  user: felindra,
  costume: ladybug,
  start_on: "2018-12-13",
  end_on: "2018-12-13",
  status: "accepted",
  price: 10,
  message: "For my little girl. This costume is sooo cute!"
  )

booking5 = Booking.create!(
  user: bob,
  costume: pirate,
  start_on: "2018-08-03",
  end_on: "2018-08-13",
  status: "refused",
  price: 35,
  message: "This costume seems to be rented, but just in case..."
  )

puts 'Finished...'
