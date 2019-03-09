require "net/http"
require "json"

module WorkshopCliTesting
  class Weather
    def initialize(http_client = Net::HTTP)
      @http_client = http_client
    end

    def get_weather(city_name)
      uri = get_uri(city_name)
      response = @http_client.get(uri)
      response_hash = JSON.parse(response)
      response_hash
    end

    def get_uri(city_name)
      api = "http://api.openweathermap.org/data/2.5/"
      key = "&APPID=af85ac894f9ddf863e28168893b4747f"
      weather = "weather?q=#{city_name}"
      url = "#{api}#{weather}#{key}"
      uri = URI(url)
      uri
    end
  end
end
