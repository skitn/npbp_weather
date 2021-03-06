class Tasks::FetchPlayer
  require 'capybara/poltergeist'

  @session = nil

  class << self
    def execute
      setup

      Team.find_each do |team|
        @session.visit team.url
        doc = Nokogiri::HTML.parse(@session.html)

        # TODO: 雄大問題の解消
        # TODO: リファクタリング
        doc.css('table.rosterlisttbl tr.rosterPlayer').each do |tr|
          td = tr.css('td')

          no = td[0].inner_text
          player_name = td[1].inner_text
          birthday = td[2].inner_text

          stadium_weather = StadiumWeather.find_by(:stadium_id => team.stadium_id, :month => birthday.to_date.month, :day => birthday.to_date.day)

          player = Player.find_by(team_id: team.id, name: player_name, birthday: birthday)
          if player
            player.stadium_weather_id = stadium_weather.id
            player.uniform_num = no
            player.active = 1
            player.save
          else
            Player.create(
              team_id: team.id,
              stadium_weather_id: stadium_weather.id,
              name: player_name,
              uniform_num: no,
              birthday: birthday,
              active: 1)
          end
        end

        doc.css('table.rosterlisttbl tr.rosterRetire').each do |tr|
          td = tr.css('td')
 
          no = td[0].inner_text
          player_name = td[1].inner_text
          birthday = td[2].inner_text

          stadium_weather = StadiumWeather.find_by(:stadium_id => team.stadium_id, :month => birthday.to_date.month, :day => birthday.to_date.day)

          player = Player.find_by(team_id: team.id, name: player_name, birthday: birthday)

          if player
            player.stadium_weather_id = stadium_weather.id
            player.uniform_num = no
            player.active = 0
            player.save
          else
            Player.create(
              team_id: team.id,
              stadium_weather_id: stadium_weather.id,
              name: player_name,
              uniform_num: no,
              birthday: birthday,
              active: 0)
          end
        end
        sleep 3
      end
    end

    private

    def setup
      Capybara.register_driver :poltergeist do |app|
        Capybara::Poltergeist::Driver.new(app, js_errors: false, timeout: 5000)
      end

      session = Capybara::Session.new(:poltergeist)
      session.driver.headers = {
        'UserAgent' => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36'
      }

      @session = session
    end
  end
end
