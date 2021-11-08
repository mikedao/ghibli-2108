require 'faraday'
require './lib/film'
require './lib/ghibli_service'

class FilmSearch
  def film_information
    service.films.map do |data|
      Film.new(data)
    end
  end

  def service
    GhibliService.new
  end
end