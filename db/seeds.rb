User.create!(username:  "Example User",
    email: "aexample@railstutorial.org",
    password:              "foobar",
    password_confirmation: "foobar",             
    activated: true,
    activated_at: Time.zone.now)


User.create!(username:  "Stefan",
    email: "stefan@raf.edu.rs",
    password:              "123456",
    password_confirmation: "123456",
    admin: true,             
    activated: true,
    activated_at: Time.zone.now)


# Generate a bunch of additional users.
99.times do |n|
username  = Faker::Name.name
email = "example-#{n+1}@railstutorial.org"
password = "password"
User.create!(username:  username,
      email: email,
      password:              password,
      password_confirmation: password,
      activated: true,
      activated_at: Time.zone.now)

end