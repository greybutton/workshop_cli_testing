RSpec.describe WorkshopCliTesting do
  it "get weather" do
    class HttpClient
      def get(_uri)
        load_fixture('weather.json')
      end
    end
    http_client = HttpClient.new
    weather = WorkshopCliTesting::Weather.new(http_client)
    data = weather.get_weather('berlin')
    is_asserted_by { data["name"] == 'Berlin' }
  end
end
