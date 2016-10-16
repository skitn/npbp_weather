class Tasks::FetchStadiumWeather
  require 'open_weather'

  class << self
    def execute
      d = Date.current
      puts d.year
      options = { APPID: ENV["OWM_API_KEY"] }

      Stadium.all.each do |tm|
        puts tm.id
        puts tm.name
        response = OpenWeather::Current.geocode(tm.lat.to_f, tm.lon.to_f, options)

        weather = response["weather"].first
        weather_name = weather["main"]
        icon = weather["icon"]

        stadium_weather = StadiumWeather.find_by(stadium_id: tm.id, month: d.month, day: d.day)
        if stadium_weather
          stadium_weather.weather_name = weather_name
          stadium_weather.icon = icon
          stadium_weather.save
        end
      end
    end
  end
end
