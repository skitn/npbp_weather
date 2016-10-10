class Tasks::FetchStadiumWeather
  require 'open_weather'

  class << self
    def execute
      d = Date.current
      puts d.year
      options = { APPID: ENV["OWM_API_KEY"] }

      TeamStadium.all.each do |tm|
        puts tm.id
        puts tm.name
        response = OpenWeather::Current.geocode(tm.lat.to_f, tm.lon.to_f, options)

        weather = response["weather"].first
        weather_name = weather["main"]
        icon = weather["icon"]

        stadium_weather = StadiumWeather.find_by(home_stadium_id: tm.id, month: d.month, day: d.day)
        if stadium_weather
          stadium_weather.weather_name = weather_name
          stadium_weather.icon = icon
          stadium_weather.save
        else
          StadiumWeather.create(
            home_stadium_id: tm.id,
            month: d.month,
            day: d.day, 
            weather_name: weather_name,
            icon: icon
          );
        end
      end
    end
  end
end
