require 'faker'

Movie.all.destroy_all

for i in 0...20 do
  movie = Movie.create({
    title: Faker::Movie.title,
    synopsis: Faker::Movie.quote,
  })

  downloaded_image = open("https://picsum.photos/230/345")
  movie.poster.attach(io: downloaded_image, filename: "image.jpg")
end
