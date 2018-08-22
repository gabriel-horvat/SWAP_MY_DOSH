Offer.destroy_all
Request.destroy_all
Message.destroy_all
User.destroy_all
Review.destroy_all




100.times do User.create!(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: "123456",
  photo: UiFaces.face,
  description: Faker::HarryPotter.quote
  )
end


puts "user created!"

locations_array = [["Tirana, Albania"], ["Andorra la Vella, Andorra"], ["Vienna, Austria"], ["Minsk, Belarus"], ["Brussels, Belgium"], ["Sarajevo, Bosnia and Herzegovina"], ["Sofia, Bulgaria"], ["Zagreb, Croatia"], ["Nicosia, Cyprus"], ["Prague, Czech Republic"], ["Copenhagen, Denmark"], ["Tallinn, Estonia"], ["Tórshavn, Faroe Islands"], ["Helsinki, Finland"], ["Paris, France"], ["Berlin, Germany"], ["Gibraltar, Gibraltar"], ["Athens, Greece"], ["St. Peter Port, Guernsey"], ["Budapest, Hungary"], ["Reykjavik, Iceland"], ["Dublin, Ireland"], ["Douglas, Isle of Man"], ["Rome, Italy"], ["Saint Helier, Jersey"], ["Riga, Latvia"], ["Vaduz, Liechtenstein"], ["Vilnius, Lithuania"], ["Luxembourg, Luxembourg"], ["Skopje, Macedonia"], ["Valletta, Malta"], ["Chișinău, Moldova"], ["Monaco, Monaco"], ["Podgorica, Montenegro"], ["Amsterdam, Netherlands"], ["Oslo, Norway"], ["Warsaw, Poland"], ["Lisbon, Portugal"], ["Bucharest, Romania"], ["Moscow, Russia"], ["City of San Marino, San Marino"], ["Belgrade, Serbia"], ["Bratislava, Slovakia"], ["Ljubljana, Slovenia"], ["Madrid, Spain"], ["Stockholm, Sweden"], ["Bern, Switzerland"], ["Kiev, Ukraine"], ["London, United Kingdom"]]

300.times do Request.create!(
  request_currency: Faker::Currency.code,
  wanted_currency: "EUR",
  request_amount: Faker::Number.number(3),
  location: locations_array.sample[0],
  start_date: Faker::Date.forward(100),
  end_date: Faker::Date.forward(100),
  status: "pending",
  user: User.all.sample
  )
end


# requests
  request_1 = Request.create!(
    request_currency: Faker::Currency.code,
    wanted_currency: Faker::Currency.code,
    request_amount: 200,
    location: "Berlin, Germany",
    start_date: Date.new(2018,8,29),
    end_date: Date.new(2018,8,31),
    status: "pending",
    user: User.all.sample
  )

request_2 = Request.create!(
    request_currency: "EUR",
    wanted_currency: "USD",
    request_amount: 50,
    location: "Berlin, Germany",
    start_date: Date.new(2018,9,2),
    end_date: Date.new(2018,9,4),
    status: "pending",
    user: User.all.sample
  )

request_3 = Request.create!(
    request_currency: "EUR",
    wanted_currency: "GBP",
    request_amount: 100,
    location: "Berlin, Germany",
    start_date: Date.new(2018,8,30),
    end_date: Date.new(2018,8,31),
    status: "pending",
    user: User.all.sample
  )

request_4 = Request.create!(
    request_currency: "GBP",
    wanted_currency: "RUB",
    request_amount: 220,
    location: "Berlin, Germany",
    start_date: Date.new(2018,9,1),
    end_date: Date.new(2018,9,5),
    status: "pending",
    user: User.all.sample
  )

request_5 = Request.create!(
    request_currency: "EUR",
    wanted_currency: "THB",
    request_amount: 300,
    location: "Berlin, Germany",
    start_date: Date.new(2018,8,29),
    end_date: Date.new(2018,9,2),
    status: "pending",

    user: User.all.sample
  )

request_6 = Request.create!(
    request_currency: "AUD",
    wanted_currency: "EUR",
    request_amount: 150,
    location: "Barcelona, Spain",
    start_date: Date.new(2018,9,1),
    end_date: Date.new(2018,9,3),
    status: "pending",
    user: User.all.sample
  )

request_7 = Request.create!(
    request_currency: "USD",
    wanted_currency: "EUR",
    request_amount: 40,
    location: "Paris, France",
    start_date: Date.new(2018,9,5),
    end_date: Date.new(2018,9,9),
    status: "pending",

    user: User.all.sample
  )

request_8 = Request.create!(
    request_currency: "USD",
    wanted_currency: "EUR",
    request_amount: 75,
    location: "London, UK",
    start_date: Date.new(2018,9,5),
    end_date: Date.new(2018,9,6),
    status: "pending",
    user: User.all.sample
  )

request_9 = Request.create!(
    request_currency: "USD",
    wanted_currency: "EUR",
    request_amount: 9999,
    location: "Moscow, Russia",
    start_date: Date.new(2018,11,18),
    end_date: Date.new(2018,11,20),
    status: "pending",
    user: User.all.sample
  )

request_10 = Request.create!(
    request_currency: "USD",
    wanted_currency: "EUR",
    request_amount: 120,
    location: "New York City, US",
    start_date: Date.new(2018,10,29),
    end_date: Date.new(2018,10,31),
    status: "pending",
    user: User.all.sample
  )

puts "requests created!"




