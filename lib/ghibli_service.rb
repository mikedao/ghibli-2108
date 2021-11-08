class GhibliService
  def films
    get_url("/films")
  end

  def characters
    get_url("/characters")
  end

  def directors
    get_url("/directors")
  end

  def get_url(url)
    response = Faraday.get("https://ghibliapi.herokuapp.com#{url}")
    JSON.parse(response.body, symbolize_names: true)
  end
end