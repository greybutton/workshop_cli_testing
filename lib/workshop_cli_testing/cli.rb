require "thor"
require "workshop_cli_testing"

module WorkshopCliTesting
  class CLI < Thor
    desc "weather", "get weather in city"
    def weather(city)
      puts WorkshopCliTesting::Weather.get_weather(city)
    end
  end
end