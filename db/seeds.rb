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


puts "user Created!"


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

