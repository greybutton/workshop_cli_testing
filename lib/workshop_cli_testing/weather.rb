require "net/http"
require "json"

module WorkshopCliTesting
  class Weather
    def self.get_weather(city)
      uri = get_uri(city)
      response = Net::HTTP.get(uri)
      response_hash = JSON.parse(response)
      response_hash
    end

    def self.get_uri(city)
      api = "http://api.openweathermap.org/data/2.5/"
      key = "&APPID=af85ac894f9ddf863e28168893b4747f"
      weather = "weather?q=#{city}"
      url = "#{api}#{weather}#{key}"
      uri = URI(url)
      uri
    end
  end
end
