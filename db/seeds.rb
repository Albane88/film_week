# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movie_date = MovieDate.create!(start_date: Date.today, end_date: Date.today+7.days)

m = Movie.create!(
  title: "Titanic",
  overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.",
  synopsis: "Seventeen-year-old Rose hails from an aristocratic family and is set to be married.
              she boards the Titanic, she meets Jack Dawson, an artist, and falls in love with him.",
  rating: 7.9,
  movie_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg",
  movie_date_id: movie_date.id
)

m = Movie.create!(
  title: "The Godfather",
  overview: "coming soon",
  synopsis: "Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.",
  rating: 7.9,
  movie_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg",
  movie_date_id: movie_date.id
)


u = User.create(email: 'jd@oui.com', password: '123123')

WatchParty.create!(date: "06/12/2021", location: "Charleroi", user_id: u.id, movie_id: m.id)
WatchParty.create!(date: "08/12/2021", location: "Charleroi", user_id: u.id, movie_id: m.id)
WatchParty.create!(date: "09/12/2021", location: "Charleroi", user_id: u.id, movie_id: m.id)
