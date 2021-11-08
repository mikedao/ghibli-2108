require 'faraday'
require 'json'
require 'pry'
require './lib/film_search'

search = FilmSearch.new
search.film_information.each do |film|
  puts film.title
  puts "Directed By: #{film.director}"
  puts "Produced By: #{film.producer}"
  puts "Rotten Tomatoes Score: #{film.rotten_tomatoes}"
  puts ""
end
