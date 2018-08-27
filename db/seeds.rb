Offer.destroy_all
Request.destroy_all
Message.destroy_all
User.destroy_all
Review.destroy_all




5.times do |i|
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

locations_array = [["Tirana, Albania"], ["Andorra la Vella, Andorra"], ["Vienna, Austria"], ["Minsk, Belarus"], ["Brussels, Belgium"], ["Sarajevo, Bosnia and Herzegovina"], ["Sofia, Bulgaria"], ["Zagreb, Croatia"], ["Nicosia, Cyprus"], ["Prague, Czech Republic"], ["Copenhagen, Denmark"], ["Tallinn, Estonia"], ["Tórshavn, Faroe Islands"], ["Helsinki, Finland"], ["Paris, France"], ["Berlin, Germany"], ["Gibraltar, Gibraltar"], ["Athens, Greece"], ["St. Peter Port, Guernsey"], ["Budapest, Hungary"], ["Reykjavik, Iceland"], ["Dublin, Ireland"], ["Douglas, Isle of Man"], ["Rome, Italy"], ["Saint Helier, Jersey"], ["Riga, Latvia"], ["Vaduz, Liechtenstein"], ["Vilnius, Lithuania"], ["Luxembourg, Luxembourg"], ["Skopje, Macedonia"], ["Valletta, Malta"], ["Chișinău, Moldova"], ["Monaco, Monaco"], ["Podgorica, Montenegro"], ["Amsterdam, Netherlands"], ["Oslo, Norway"], ["Warsaw, Poland"], ["Lisbon, Portugal"], ["Bucharest, Romania"], ["Moscow, Russia"], ["City of San Marino, San Marino"], ["Belgrade, Serbia"], ["Bratislava, Slovakia"], ["Ljubljana, Slovenia"], ["Madrid, Spain"], ["Stockholm, Sweden"], ["Bern, Switzerland"], ["Kiev, Ukraine"], ["London, United Kingdom"]]

5.times do |i|
  puts "Creating request ##{i}"
  Request.create!(
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



puts "requests created!"





5.times do |i|
  puts "Creating reviews ##{i}"
  Review.create!(
  content: Faker::StarWars.quote,
  rating: Faker::Number.number(1),
  user: User.all.sample,
  request: Request.all.sample
  )
end



puts "reviews created!"
