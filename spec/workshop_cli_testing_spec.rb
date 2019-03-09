RSpec.describe WorkshopCliTesting do
  before do
    city = 'berlin'
    stub_request(:get, WorkshopCliTesting::Weather.get_uri(city))
      .to_return(body: load_fixture('weather.json'))
  end

  it "has a version number" do
    expect(WorkshopCliTesting::VERSION).not_to be nil
  end

  it "get weather" do
    data = WorkshopCliTesting::Weather.get_weather('berlin')
    is_asserted_by { data["name"] == 'Berlin' }
  end
end
