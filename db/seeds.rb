Order.destroy_all
Feeling.destroy_all
User.destroy_all

idx = 0

100.times do
  user = User.create!(email: "#{idx += 1 }@batata.com", password: 'batata')

  feeling = Feeling.create!(name: Faker::Emotion.noun,
                            description: "Consegui esse sentimento ao assistir o show do milhão" ,
                            percentage: 100,
                            user_id: user.id)

    file = URI.open("http://source.unsplash.com/random/#{feeling.name}")
    feeling.photo.attach(io: file, filename: "#{feeling.name}.png", content_type: "image/png")
    feeling.save!

end
