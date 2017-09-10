20.times do |i|
  User.create(username: "user#{i}", password: "password")
end
