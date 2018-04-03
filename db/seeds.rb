puts 'Cleaning all tables of the database...'
User.destroy_all
Costume.destroy_all
Booking.destroy_all


puts 'Creating users'

john = User.create!(
  email: "bob.lean@test.com",
  encrypted_password: "123456",
  )



puts 'Creating costumes'
banana = Costume.create!(name: "banana")
orange = Costume.create!(name: "orange")
rhum = Costume.create!(name: "rhum")
vodka = Costume.create!(name: "vodka")


banana_moon = Booking.create!(name: "banana moon")
mechanical_orange = Booking.create!(name: "mechanical orange")
all_roads_lead_to_rhum = Booking.create!(name: "all roads lead to rhum")
vodkoka = Booking.create!(name: "vodkoka")



b_dose_1 = Dose.create!(
  cocktail: banana_moon,
  ingredient: banana,
  description: "10cl"
  )

b_dose_2 = Dose.create!(
  cocktail: banana_moon,
  ingredient: rhum,
  description: "4cl"
  )

m_dose_1 = Dose.create!(
  cocktail: mechanical_orange,
  ingredient: orange,
  description: "10cl"
  )
m_dose_2 = Dose.create!(
  cocktail: mechanical_orange,
  ingredient: vodka,
  description: "3cl"
  )

a_dose_1 = Dose.create!(
  cocktail: all_roads_lead_to_rhum,
  ingredient: orange,
  description: "13cl"
  )
a_dose_2 = Dose.create!(
  cocktail: all_roads_lead_to_rhum,
  ingredient: rhum,
  description: "3cl")

v_dose_1 = Dose.create!(
  cocktail: vodkoka,
  ingredient: banana,
  description: "20cl"
  )
v_dose_2 = Dose.create!(
  cocktail: vodkoka,
  ingredient: vodka,
  description: "5cl"
  )


puts 'Finished...'
