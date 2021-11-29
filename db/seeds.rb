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
  director: "Steve McQueen",
  year: 2011,
  actor: "Michael Fassbender, Carey Mulligan",
  title: "Shame",
  overview: "A sex addict's carefully cultivated private life falls apart after his sister arrives for an indefinite stay.",
  synopsis: "Successful and handsome New Yorker Brandon seems to live an ordinary life, but he hides
   a terrible secret behind his mask of normalcy: Brandon is a sex addict. His constant need for gratification numbs him
   to just about everything else. But, when Sissy, Brandon's needy sister, unexpectedly blows into town,
   crashes at his apartment and invades his privacy, Brandon is finally forced to confront his addiction head-on.",
  rating: 7.9,
  movie_url: "https://www.youtube.com/embed/Op9iQiB_ANI",
  movie_date_id: movie_date_1.id,
  review: "",
  picture: 'shame.jpg'
)
# m1.photo.attach(io: pic1, filename: 'shame.png', content_type: 'image/png')

m2 = Movie.create!(
  director: "Paul Thomas Anderson",
  year: 2015,
  actor: "Joaquin Phoenix, Josh Brolin, Katherine Waterston",
  title: "Inherent Vice",
  overview: "In 1970, drug-fueled Los Angeles private investigator Larry 'Doc' Sportello investigates the disappearance of a former girlfriend.",
  synopsis: "Doc, a private investigator, is visited by his former flame who suspects
  the wife of her current beau is plotting to institutionalise him. Doc takes on the
   case hoping to solve it.",
  rating: 8.9,
  movie_url: "https://www.youtube.com/embed/wZfs22E7JmI",
  movie_date_id: movie_date_2.id,
  review: "",
  picture: 'inherent_vice.jpg'
)

m3 = Movie.create!(
  director: "Mia Hansen-Løve",
  year: 2011,
  actor: "Lola Créton, Sebastian Urzendowsky",
  title: "Goodbye First Love",
  overview: "A chronicle of the romance between Camille and Sullivan, which begins during their adolescence and picks up after Sullivan's 8-year absence from exploring the world.",
  synopsis: "15-year-old Camille and 19-year-old Sullivan are in love for the first
  time. However, when Sullivan goes to Latin America on a journey of self-discovery,
  Camille is consumed by melancholy and longing for Sullivan, and she struggles to move on.",
  rating: 8.9,
  movie_url: "https://www.youtube.com/embed/V7mQYVQZiRA",
  movie_date_id: movie_date_3.id,
  review: "",
  picture: "goodbye_first_love.jpg"
)

m4 = Movie.create!(
  director: "Audrey Diwan",
  year: 2021,
  actor: "Anamaria Vartolomei, Kacey Mottet Klein, Luàna Bajrami",
  title: "Happening",
  overview: "An adaptation of Annie Ernaux's eponymous novel, looking back on her experience with abortion when it was still illegal in France in the 1960s.",
  synopsis: "A young woman in 1960s France battles physically and emotionally to
  access illegal abortion in a race against the clock.",
  rating: 8.9,
  movie_url: "https://www.youtube.com/embed/HGe_O7Ll3HY",
  movie_date_id: movie_date_4.id,
  review: "",
  picture: "happening.jpg"
)

m5 = Movie.create!(
  director: "Frederick Wiseman",
  year: 2021,
  actor: "Leanne Benjamin, Kausikan Rajeshkumar, Jo Shapcott",
  title: "National Gallery",
  overview: "A documentary that goes inside one of the great museums of the world: The National Gallery in London.",
  synopsis: "This documentary goes inside and examines one of the great museums
  of the modern world, The National Gallery in London.",
  rating: 8.9,
  movie_url: "https://www.youtube.com/embed/Yu7b-jGANr8",
  movie_date_id: movie_date_5.id,
  review: "",
  picture: "national_gallery.png"
)

m6 = Movie.create!(
  director: "Park Chan-Wook",
  year: 2003,
  actor: "Garon Tsuchiya, Nobuaki Minegishi, Park Chan-Wook",
  title: "Oldboy",
  overview: "After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.",
  synopsis: "A man, held captive for no apparent reason for years, is given a cell
  phone, money and expensive clothes and released. Unless he finds out the identity
  of his captor, an even worse fate awaits him.",
  rating: 8.9,
  movie_url: "https://www.youtube.com/embed/2HkjrJ6IK5E",
  movie_date_id: movie_date_6.id,
  review: "",
  picture: "oldboy.jpg"
)

m7 = Movie.create!(
  director: "Gaspar Noé",
  year: 2018,
  actor: "Sofia Boutella, Romain Guillermic, Souheila Yacoub",
  title: "Climax",
  overview: "French dancers gather in a remote, empty school building to rehearse on a wintry night. The all-night celebration morphs into a hallucinatory nightmare when they learn their sangria is laced with LSD.",
  synopsis: "A group of French dancers gathers in an empty school to rehearse and party.
  However, their celebration soon turns into a nightmare when they realise that their drinks
  are spiked with LSD.",
  rating: 8.9,
  movie_url: "https://www.youtube.com/embed/gNp0jlfbgqM",
  movie_date_id: movie_date_7.id,
  review: "",
  picture: ""
)

u = User.create!(email: 'jd@oui.com', password: '123123')

WatchParty.create!(date: "06/12/2021", location: "Charleroi", user_id: u.id, movie_id: m1.id)
WatchParty.create!(date: "08/12/2021", location: "Charleroi", user_id: u.id, movie_id: m2.id)
WatchParty.create!(date: "09/12/2021", location: "Charleroi", user_id: u.id, movie_id: m1.id)
