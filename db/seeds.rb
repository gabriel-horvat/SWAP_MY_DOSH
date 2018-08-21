Offer.destroy_all
Request.destroy_all
Message.destroy_all
User.destroy_all
Review.destroy_all


User.create(
  [
    {
      email: "ann@example.com",
      password: "123456"
    },
    {
      email: "bob@example.com",
      password: "123456"
    },
    {
      email: "charlie@example.com",
      password: "123456"
    }
  ]
)


puts "user created!"


# requests
  request_1 = Request.create!(
    request_currency: "USD",
    wanted_currency: "EUR",
    request_amount: 200,
    wanted_amount: 170,
    location: "Berlin, Germany",
    start_date: Date.new(2018,8,29),
    end_date: Date.new(2018,8,31),
    status: "accepted",
    user_id: 1,
    user: User.all.sample
  )

request_2 = Request.create!(
    request_currency: "EUR",
    wanted_currency: "USD",
    request_amount: 50,
    wanted_amount: 70,
    location: "Berlin, Germany",
    start_date: Date.new(2018,9,2),
    end_date: Date.new(2018,9,4),
    status: "accepted",
    user_id: 2,
    user: User.all.sample
  )

request_3 = Request.create!(
    request_currency: "EUR",
    wanted_currency: "GBP",
    request_amount: 100,
    wanted_amount: 80,
    location: "Berlin, Germany",
    start_date: Date.new(2018,8,30),
    end_date: Date.new(2018,8,31),
    status: "pending",
    user_id: 3,
    user: User.all.sample
  )

request_4 = Request.create!(
    request_currency: "GBP",
    wanted_currency: "RUB",
    request_amount: 220,
    wanted_amount: 18850,
    location: "Berlin, Germany",
    start_date: Date.new(2018,9,1),
    end_date: Date.new(2018,9,5),
    status: "declined",
    user_id: 4,
    user: User.all.sample
  )

request_5 = Request.create!(
    request_currency: "EUR",
    wanted_currency: "THB",
    request_amount: 300,
    wanted_amount: 11300,
    location: "Berlin, Germany",
    start_date: Date.new(2018,8,29),
    end_date: Date.new(2018,9,2),
    status: "accepted",
    user_id: 5,
    user: User.all.sample
  )

request_6 = Request.create!(
    request_currency: "AUD",
    wanted_currency: "EUR",
    request_amount: 150,
    wanted_amount: 170,
    location: "Barcelona, Spain",
    start_date: Date.new(2018,9,1),
    end_date: Date.new(2018,9,3),
    status: "accepted",
    user_id: 6,
    user: User.all.sample
  )

request_7 = Request.create!(
    request_currency: "USD",
    wanted_currency: "EUR",
    request_amount: 40,
    wanted_amount: 35,
    location: "Paris, France",
    start_date: Date.new(2018,9,5),
    end_date: Date.new(2018,9,9),
    status: "pending",
    user_id: 7,
    user: User.all.sample
  )

request_8 = Request.create!(
    request_currency: "USD",
    wanted_currency: "EUR",
    request_amount: 75,
    wanted_amount: 60,
    location: "London, UK",
    start_date: Date.new(2018,9,5),
    end_date: Date.new(2018,9,6),
    status: "accepted",
    user_id: 8,
    user: User.all.sample
  )

request_9 = Request.create!(
    request_currency: "USD",
    wanted_currency: "EUR",
    request_amount: 9999,
    wanted_amount: 8750,
    location: "Moscow, Russia",
    start_date: Date.new(2018,11,18),
    end_date: Date.new(2018,11,20),
    status: "declined",
    user_id: 9,
    user: User.all.sample
  )

request_10 = Request.create!(
    request_currency: "USD",
    wanted_currency: "EUR",
    request_amount: 120,
    wanted_amount: 105,
    location: "New York City, US",
    start_date: Date.new(2018,10,29),
    end_date: Date.new(2018,10,31),
    status: "accepted",
    user_id: 10,
    user: User.all.sample
  )

puts "requests created!"




