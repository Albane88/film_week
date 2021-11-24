require "open-uri"

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

# pic1 = URI.open('https://res.cloudinary.com/imageslwgn/image/upload/v1637766039/Images%20FilmWeek%20App%20Le%20Wagon/Shame_fn2ylj.jpg')

m1 = Movie.create!(
  title: "Shame",
  overview: "coming soon",
  synopsis: "Successful and handsome New Yorker Brandon seems to live an ordinary life, but he hides
   a terrible secret behind his mask of normalcy: Brandon is a sex addict. His constant need for gratification numbs him
   to just about everything else. But, when Sissy, Brandon's needy sister, unexpectedly blows into town,
   crashes at his apartment and invades his privacy, Brandon is finally forced to confront his addiction head-on.",
  rating: 7.9,
  movie_url: "insert trailer link",
  movie_date_id: movie_date_1.id,
  picture: "https://res.cloudinary.com/imageslwgn/image/upload/v1637766039/Images%20FilmWeek%20App%20Le%20Wagon/Shame_fn2ylj.jpg"
)
# m1.photo.attach(io: pic1, filename: 'shame.png', content_type: 'image/png')

m2 = Movie.create!(
  title: "Inherent Vice",
  overview: "coming soon",
  synopsis: "Doc, a private investigator, is visited by his former flame who suspects
  the wife of her current beau is plotting to institutionalise him. Doc takes on the
   case hoping to solve it.",
  rating: 8.9,
  movie_url: "insert trailer link",
  movie_date_id: movie_date_2.id,
  picture: "https://res.cloudinary.com/imageslwgn/image/upload/v1637766039/Images%20FilmWeek%20App%20Le%20Wagon/Inherent_Vice_w4jg8s.jpg"
)

m3 = Movie.create!(
  title: "Goodbye First Love",
  overview: "coming soon",
  synopsis: "15-year-old Camille and 19-year-old Sullivan are in love for the first
  time. However, when Sullivan goes to Latin America on a journey of self-discovery,
  Camille is consumed by melancholy and longing for Sullivan, and she struggles to move on.",
  rating: 8.9,
  movie_url: "insert trailer link",
  movie_date_id: movie_date_3.id,
  picture: "https://res.cloudinary.com/imageslwgn/image/upload/v1637766040/Images%20FilmWeek%20App%20Le%20Wagon/Goodbye_First_Love_s3eptp.jpg"
)

m4 = Movie.create!(
  title: "Happening",
  overview: "coming soon",
  synopsis: "A young woman in 1960s France battles physically and emotionally to
  access illegal abortion in a race against the clock.",
  rating: 8.9,
  movie_url: "insert trailer link",
  movie_date_id: movie_date_4.id,
  picture: "https://res.cloudinary.com/imageslwgn/image/upload/v1637766039/Images%20FilmWeek%20App%20Le%20Wagon/Happening_Audrey_Diwan_tqbxh2.jpg"
)

m5 = Movie.create!(
  title: "National Gallery",
  overview: "coming soon",
  synopsis: "This documentary goes inside and examines one of the great museums
  of the modern world, The National Gallery in London.",
  rating: 8.9,
  movie_url: "insert trailer link",
  movie_date_id: movie_date_5.id,
  picture: "https://res.cloudinary.com/imageslwgn/image/upload/v1637766039/Images%20FilmWeek%20App%20Le%20Wagon/National_Gallery_Frederick_Wiseman_lb6qvr.jpg"
)

m6 = Movie.create!(
  title: "Oldboy",
  overview: "coming soon",
  synopsis: "A man, held captive for no apparent reason for years, is given a cell
  phone, money and expensive clothes and released. Unless he finds out the identity
  of his captor, an even worse fate awaits him.",
  rating: 8.9,
  movie_url: "insert trailer link",
  movie_date_id: movie_date_6.id,
  picture: "https://res.cloudinary.com/imageslwgn/image/upload/v1637766039/Images%20FilmWeek%20App%20Le%20Wagon/Oldboy_zzzrhd.jpg"
)

m7 = Movie.create!(
  title: "Climax",
  overview: "coming soon",
  synopsis: "A group of French dancers gathers in an empty school to rehearse and party.
  However, their celebration soon turns into a nightmare when they realise that their drinks
  are spiked with LSD.",
  rating: 8.9,
  movie_url: "insert trailer link",
  movie_date_id: movie_date_7.id,
  picture: "https://res.cloudinary.com/imageslwgn/image/upload/v1637766039/Images%20FilmWeek%20App%20Le%20Wagon/Climax_Gaspard_Noe_eervns.jpg"
)

u = User.create!(email: 'jd@oui.com', password: '123123')

WatchParty.create!(date: "06/12/2021", location: "Charleroi", user_id: u.id, movie_id: m1.id)
WatchParty.create!(date: "08/12/2021", location: "Charleroi", user_id: u.id, movie_id: m2.id)
WatchParty.create!(date: "09/12/2021", location: "Charleroi", user_id: u.id, movie_id: m1.id)
