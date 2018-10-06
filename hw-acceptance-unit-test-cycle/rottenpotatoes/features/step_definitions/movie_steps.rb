Given(/^the following movies exist:$/) do |movies_table|
  movies_table.hashes.each do |movie_hash|
    Movie.create movie_hash
  end
end

Then(/^the director of "(.+)" should be "(.+)"/) do |title, director|
  movie = Movie.find_by(title: title)
  expect(director).to eq(movie.director)
end