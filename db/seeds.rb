all_categories = JSON.parse(File.read(Rails.root.join('db/categories.json')))

all_categories.each do |category|
  Category.create!(category: category.values[0])
end

all_actors = JSON.parse(File.read(Rails.root.join('db/actors.json')))

all_actors.each do |actor|
  Actor.create!(name: actor.values[0])
end

all_directors = JSON.parse(File.read(Rails.root.join('db/diretors.json')))

all_directors.each do |director|
  Director.create!(name: director.values[0])
end

all_movies = JSON.parse(File.read(Rails.root.join('db/movies.json')))

all_movies.each do |movie|
  Movie.create(
    title: movie['title'],
    title_producer: movie['title_producer'],
    release_year: movie['release_year'],
    description: movie['description'],
    background_image: movie['background_image'],
    background_video: movie['background_video'],
    card_image: movie['card_image']
  )
end

movie_categories = JSON.parse(File.read(Rails.root.join('db/movie_categories.json')))

movie_categories.each do |movie|
  MovieCategory.create!(
    movie_id: movie.keys[0],
    category_id: movie.values[0]
  )
end

movie_actors = JSON.parse(File.read(Rails.root.join('db/movie_ators.json')))

movie_actors.each do |movie|
  MovieActor.create!(
    movie_id: movie.keys[0],
    actor_id: movie.values[0]
  )
end

movie_directors = JSON.parse(File.read(Rails.root.join('db/movie_directors.json')))

movie_directors.each do |movie|
  MovieDirector.create!(
    movie_id: movie.keys[0],
    director_id: movie.values[0]
  )
end
