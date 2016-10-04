class Tasks::FetchPlayer
  require 'capybara/poltergeist'

  @session = nil

  class << self
    def execute
      setup

      urls.each do |url|
        @session.visit url
        doc = Nokogiri::HTML.parse(@session.html)
        doc.css('table.rosterlisttbl tr.rosterPlayer').each do |tr|
          td = tr.css('td')

          no = td[0].inner_text
          player_name = td[1].inner_text
          birthday = td[2].inner_text
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

    def urls
      [
        "http://npb.jp/bis/teams/rst_g.html",
        "http://npb.jp/bis/teams/rst_s.html",
        "http://npb.jp/bis/teams/rst_t.html",
        "http://npb.jp/bis/teams/rst_c.html",
        "http://npb.jp/bis/teams/rst_d.html",
        "http://npb.jp/bis/teams/rst_db.html",
        "http://npb.jp/bis/teams/rst_h.html",
        "http://npb.jp/bis/teams/rst_f.html",
        "http://npb.jp/bis/teams/rst_m.html",
        "http://npb.jp/bis/teams/rst_l.html",
        "http://npb.jp/bis/teams/rst_bs.html",
        "http://npb.jp/bis/teams/rst_e.html",
      ]
    end
  end
end
