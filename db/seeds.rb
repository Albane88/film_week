# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.destroy_all
WatchParty.destroy_all
User.destroy_all
MovieDate.destroy_all

movie_date_1 = MovieDate.create!(start_date: Date.today-7.days, end_date: Date.today)
movie_date_2 = MovieDate.create!(start_date: Date.today-6.days, end_date: Date.today+1.day)
movie_date_3 = MovieDate.create!(start_date: Date.today-5.days, end_date: Date.today+2.days)
movie_date_4 = MovieDate.create!(start_date: Date.today-4.days, end_date: Date.today+3.days)
movie_date_5 = MovieDate.create!(start_date: Date.today-3.days, end_date: Date.today+4.days)
movie_date_6 = MovieDate.create!(start_date: Date.today-2.days, end_date: Date.today+5.days)
movie_date_7 = MovieDate.create!(start_date: Date.today-1.day, end_date: Date.today+6.days)


m1 = Movie.create!(
  title: "Titanic",
  overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.
  James Cameron's Titanic is an epic, action-packed romance set against the ill-fated maiden
  voyage of the R.M.S. Titanic; the pride and joy of the White Star Line and, at the time,
  the largest moving object ever built. She was the most luxurious liner of her era --
  the ship of dreams -- which ultimately carried over 1,500 people to their death in the
  ice cold waters of the North Atlantic in the early hours of April 15, 1912.",
  synopsis: "Seventeen-year-old Rose hails from an aristocratic family and is set to be married.
            She boards the Titanic, she meets Jack Dawson, an artist, and falls in love with him.",

  rating: 7.9,
  movie_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg",
  movie_date_id: movie_date_1.id
)

m2 = Movie.create!(
  title: "The Godfather",
  overview: "coming soon",
  synopsis: "Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.",
  rating: 8.9,
  movie_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg",
  movie_date_id: movie_date_2.id
)

m3 = Movie.create!(
  title: "Bambi",
  overview: "coming soon",
  synopsis: "Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.",
  rating: 8.9,
  movie_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg",
  movie_date_id: movie_date_3.id
)

m4 = Movie.create!(
  title: "Dune",
  overview: "coming soon",
  synopsis: "Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.",
  rating: 8.9,
  movie_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg",
  movie_date_id: movie_date_4.id
)

m5 = Movie.create!(
  title: "Ghostbusters",
  overview: "coming soon",
  synopsis: "Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.",
  rating: 8.9,
  movie_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg",
  movie_date_id: movie_date_5.id
)

m6 = Movie.create!(
  title: "Jurassic Park",
  overview: "coming soon",
  synopsis: "Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.",
  rating: 8.9,
  movie_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg",
  movie_date_id: movie_date_6.id
)

m7 = Movie.create!(
  title: "Old Boy",
  overview: "coming soon",
  synopsis: "Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.",
  rating: 8.9,
  movie_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg",
  movie_date_id: movie_date_7.id
)

u = User.create!(email: 'jd@oui.com', password: '123123')

WatchParty.create!(date: "06/12/2021", location: "Charleroi", user_id: u.id, movie_id: m1.id)
WatchParty.create!(date: "08/12/2021", location: "Charleroi", user_id: u.id, movie_id: m2.id)
WatchParty.create!(date: "09/12/2021", location: "Charleroi", user_id: u.id, movie_id: m1.id)
