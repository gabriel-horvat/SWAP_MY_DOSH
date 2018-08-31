Request.destroy_all
Offer.destroy_all
Message.destroy_all
Review.destroy_all
User.destroy_all
puts "destroyed all"


  user1 = User.create!(
  name: "Christian Sizer",
  email: "Christian.Sizer@example.com",
  password: "123456",
  remote_photo_url: "https://res.cloudinary.com/dfowktpgu/image/upload/v1535623875/Christian_Sizer.png",
  description: Faker::HarryPotter.quote
  )

  user2 = User.create!(
  name: "Laura Lindt",
  email: "Laura.Lindt@example.com",
  password: "123456",
  remote_photo_url: "https://res.cloudinary.com/dfowktpgu/image/upload/v1535623875/Laura_Lindt.png",
  description: Faker::HarryPotter.quote
  )

  user3 = User.create!(
  name: "Eloise Ng",
  email: "Eloise.Ng@example.com",
  password: "123456",
  remote_photo_url: "https://res.cloudinary.com/dfowktpgu/image/upload/v1535623875/Eloise_Ng.png",
  description: Faker::HarryPotter.quote
  )

  user4 = User.create!(
  name: "Marie Moench",
  email: "Marie.Moench@example.com",
  password: "123456",
  remote_photo_url: "https://res.cloudinary.com/dfowktpgu/image/upload/v1535623875/Marie_Moench.png",
  description: Faker::HarryPotter.quote
  )

  user5 = User.create!(
  name: "Phillipp Feierabend",
  email: "Phillipp.Feierabend@example.com",
  password: "123456",
  remote_photo_url: "https://res.cloudinary.com/dfowktpgu/image/upload/v1535623876/Phillipp_Feierabend.png",
  description: Faker::HarryPotter.quote
  )

  user6 = User.create!(
  name: "Shinta Nozawa",
  email: "Shinta.Nozawa@example.com",
  password: "123456",
  remote_photo_url: "https://res.cloudinary.com/dfowktpgu/image/upload/v1535623876/Shinta_Nozawa.png",
  description: Faker::HarryPotter.quote
  )

  user7 = User.create!(
  name: "Anna Faust",
  email: "Anna.Faust@example.com",
  password: "123456",
  remote_photo_url: "https://res.cloudinary.com/dfowktpgu/image/upload/v1535623875/Anna_Faust.png",
  description: Faker::HarryPotter.quote
  )

  user8 = User.create!(
  name: "Hannah Karlsson",
  email: "Hannah.Karlsson@example.com",
  password: "123456",
  remote_photo_url: "https://res.cloudinary.com/dfowktpgu/image/upload/v1535623875/Hannah_Karlsson.png",
  description: Faker::HarryPotter.quote
  )

  user9 = User.create!(
  name: "Ollie Anibaba",
  email: "Ollie.Anibaba@example.com",
  password: "123456",
  remote_photo_url: "https://res.cloudinary.com/dfowktpgu/image/upload/v1535623876/Ollie_Anibaba.png",
  description: Faker::HarryPotter.quote
  )

  user10 = User.create!(
  name: "Liam Peacock",
  email: "Liam.Peacock@example.com",
  password: "123456",
  remote_photo_url: "https://res.cloudinary.com/dfowktpgu/image/upload/v1535623875/Liam_Peacock.png",
  description: Faker::HarryPotter.quote
  )

  user11 = User.create!(
  name: "Harriet Woods",
  email: "Harriet.Woods@example.com",
  password: "123456",
  remote_photo_url: "https://res.cloudinary.com/dfowktpgu/image/upload/v1535623875/Harriet_Woods.png",
  description: Faker::HarryPotter.quote
  )

  user12 = User.create!(
  name: "Laura Hale",
  email: "Laura.Hale@example.com",
  password: "123456",
  remote_photo_url: "https://res.cloudinary.com/dfowktpgu/image/upload/v1535623876/Laura_Hale.png",
  description: Faker::HarryPotter.quote
  )

  user13 = User.create!(
  name: "Connor Rowe",
  email: "Connor.Rowe@example.com",
  password: "123456",
  remote_photo_url: "https://res.cloudinary.com/dfowktpgu/image/upload/v1535623875/Connor_Rowe.png",
  description: Faker::HarryPotter.quote
  )

currency_array = [['🇪🇺EUR'], ['🇦🇺AUD'], ['🇺🇸USD'], ['🇬🇧GBP'], ['🇨🇳CNY'], ['🇭🇰HKD'], ['🇨🇦CAD'], ['🇩🇰DKK'], ['🇯🇵JPY'], ['🇰🇷KRW'], ['🇲🇾MYR'], ['🇲🇽MXN'], ['🇳🇿NZD'], ['🇳🇴NOK'], ['🇸🇬SGD'], ['🇿🇦ZAR'], ['🇸🇪SEK'], ['🇨🇭CHF'], ['🇦🇪AED'], ['🇻🇳VDN'], ['🇷🇺RUB'], ['🇵🇱PLN']]

  Request.create!(
  wanted_currency: "🇦🇺AUD",
  request_currency: "🇪🇺EUR",
  request_amount: Faker::Number.number(3),
  location: ("Berlin, Germany"),
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.forward(100),
  status: "pending",
  user: user1
  )

  Request.create!(
  request_currency: "🇪🇺EUR",
  wanted_currency: "🇦🇺AUD",
  request_amount: Faker::Number.number(3),
  location: ("Berlin, Germany"),
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.forward(100),
  status: "pending",
  user: user2
  )

  Request.create!(
  request_currency: "🇪🇺EUR",
  wanted_currency: "🇦🇺AUD",
  request_amount: Faker::Number.number(3),
  location: ("Berlin, Germany"),
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.forward(100),
  status: "pending",
  user: user3
  )

  Request.create!(
  request_currency: "🇪🇺EUR",
  wanted_currency: "🇦🇺AUD",
  request_amount: Faker::Number.number(3),
  location: ("Berlin, Germany"),
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.forward(100),
  status: "pending",
  user: user4
  )

  Request.create!(
  request_currency: "🇪🇺EUR",
  wanted_currency: "🇦🇺AUD",
  request_amount: Faker::Number.number(3),
  location: ("Berlin, Germany"),
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.forward(100),
  status: "pending",
  user: user5
  )

  Request.create!(
  request_currency: "🇪🇺EUR",
  wanted_currency: "🇦🇺AUD",
  request_amount: Faker::Number.number(3),
  location: ("Berlin, Germany"),
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.forward(100),
  status: "pending",
  user: user6
  )

  Request.create!(
  request_currency: "🇪🇺EUR",
  wanted_currency: "🇦🇺AUD",
  request_amount: Faker::Number.number(3),
  location: ("Berlin, Germany"),
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.forward(100),
  status: "pending",
  user: user7
  )

  Request.create!(
  request_currency: "🇪🇺EUR",
  wanted_currency: "🇦🇺AUD",
  request_amount: Faker::Number.number(3),
  location: ("Berlin, Germany"),
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.forward(100),
  status: "pending",
  user: user8
  )

  Request.create!(
  request_currency: "🇪🇺EUR",
  wanted_currency: "🇦🇺AUD",
  request_amount: Faker::Number.number(3),
  location: ("Berlin, Germany"),
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.forward(100),
  status: "pending",
  user: user9
  )

  Request.create!(
  request_currency: "🇪🇺EUR",
  wanted_currency: "🇦🇺AUD",
  request_amount: Faker::Number.number(3),
  location: ("Berlin, Germany"),
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.forward(100),
  status: "pending",
  user: user10
  )

  Request.create!(
  request_currency: "🇪🇺EUR",
  wanted_currency: "🇦🇺AUD",
  request_amount: Faker::Number.number(3),
  location: ("Berlin, Germany"),
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.forward(100),
  status: "pending",
  user: user11
  )

  Request.create!(
  request_currency: "🇪🇺EUR",
  wanted_currency: "🇦🇺AUD",
  request_amount: Faker::Number.number(3),
  location: ("Berlin, Germany"),
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.forward(100),
  status: "pending",
  user: user12
  )

  Request.create!(
  request_currency: "🇪🇺EUR",
  wanted_currency: "🇦🇺AUD",
  request_amount: Faker::Number.number(3),
  location: ("Berlin, Germany"),
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.forward(100),
  status: "pending",
  user: user13
  )



20.times do |i|
  puts "Creating User ##{i}"
  User.create!(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: "123456",
  remote_photo_url: UiFaces.face,
  description: Faker::HarryPotter.quote
  )
end


puts "user created!"

locations_array = [["Tirana, Albania"], ["Vienna, Austria"], ["Minsk, Belarus"], ["Brussels, Belgium"], ["Sofia, Bulgaria"], ["Zagreb, Croatia"], ["Nicosia, Cyprus"], ["Prague, Czech Republic"], ["Copenhagen, Denmark"], ["Tallinn, Estonia"], ["Tórshavn, Faroe Islands"], ["Helsinki, Finland"], ["Paris, France"], ["Berlin, Germany"], ["Athens, Greece"], ["Budapest, Hungary"], ["Reykjavik, Iceland"], ["Dublin, Ireland"], ["Rome, Italy"], ["Saint Helier, Jersey"], ["Riga, Latvia"], ["Vaduz, Liechtenstein"], ["Vilnius, Lithuania"], ["Luxembourg, Luxembourg"], ["Skopje, Macedonia"], ["Valletta, Malta"], ["Chișinău, Moldova"], ["Monaco, Monaco"], ["Podgorica, Montenegro"], ["Amsterdam, Netherlands"], ["Oslo, Norway"], ["Warsaw, Poland"], ["Lisbon, Portugal"], ["Bucharest, Romania"], ["Moscow, Russia"], ["Belgrade, Serbia"], ["Bratislava, Slovakia"], ["Ljubljana, Slovenia"], ["Madrid, Spain"], ["Stockholm, Sweden"], ["Bern, Switzerland"], ["Kiev, Ukraine"], ["London, United Kingdom"]]

20.times do |i|
  puts "Creating request ##{i}"
  Request.create!(
  request_currency: currency_array.sample[0],
  wanted_currency: "🇪🇺EUR",
  request_amount: Faker::Number.number(3),
  location: locations_array.sample[0],
  start_date: Faker::Date.forward(100),
  end_date: Faker::Date.forward(100),
  status: "pending",
  user: User.all.sample
  )
end

puts "requests created!"

300.times do |i|
  puts "Creating reviews ##{i}"
  Review.create!(
  content: Faker::RickAndMorty.quote,
  rating: rand(1..5),
  user: User.all.sample,
  request: Request.all.sample
  )
end

puts "reviews created!"
