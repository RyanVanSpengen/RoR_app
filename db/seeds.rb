User.create!(name: "Ryan ",
            email: "t3@t3.com",
            password: "testing",
            password_confirmation: "testing",
            admin: true)
            
99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "testing"
  User.create!(name: name,
              email: email,
              password: password,
              password_confirmation: password)
end 