# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TeamStadium.create(:id => 1, :name => '東京ドーム', :lat => '35.705471', :lon => '139.751801')
TeamStadium.create(:id => 2, :name => '明治神宮野球場', :lat => '35.67452',  :lon => '139.717083')
TeamStadium.create(:id => 3, :name => '阪神甲子園球場', :lat => '34.721394', :lon => '135.361594')
TeamStadium.create(:id => 4, :name => 'MAZDA Zoom-Zoom スタジアム広島', :lat => '34.392028', :lon => '132.484678')
TeamStadium.create(:id => 5, :name => 'ナゴヤドーム', :lat => '35.185805', :lon => '136.947498')
TeamStadium.create(:id => 6, :name => '横浜スタジアム', :lat => '35.443086', :lon => '139.64005')
TeamStadium.create(:id => 7, :name => '福岡Yahoo! JAPANドーム', :lat => '33.595211', :lon => '130.362182')
TeamStadium.create(:id => 8, :name => '札幌ドーム', :lat => '43.014846', :lon => '141.410007')
TeamStadium.create(:id => 9, :name => 'QVCマリンフィールド', :lat => '35.645444', :lon => '140.031186')
TeamStadium.create(:id => 10, :name => '西武ドーム', :lat => '35.768479', :lon => '139.420484')
TeamStadium.create(:id => 11, :name => '京セラドーム大阪', :lat => '34.669359', :lon => '135.476274')
TeamStadium.create(:id => 12, :name => '楽天Koboスタジアム宮城', :lat => '38.256599', :lon => '140.902609')

Team.create(:id => 1, :name => '巨人', :home_stadium_id => 1, :url => 'http://npb.jp/bis/teams/rst_g.html')
Team.create(:id => 2, :name => 'ヤクルト', :home_stadium_id => 2, :url => 'http://npb.jp/bis/teams/rst_s.html')
Team.create(:id => 3, :name => '阪神', :home_stadium_id => 3, :url => 'http://npb.jp/bis/teams/rst_t.html')
Team.create(:id => 4, :name => '広島', :home_stadium_id => 4, :url => 'http://npb.jp/bis/teams/rst_c.html')
Team.create(:id => 5, :name => '中日', :home_stadium_id => 5, :url => 'http://npb.jp/bis/teams/rst_d.html')
Team.create(:id => 6, :name => '横浜DeNA', :home_stadium_id => 6, :url => 'http://npb.jp/bis/teams/rst_db.html')
Team.create(:id => 7, :name => 'ソフトバンク', :home_stadium_id => 7, :url => 'http://npb.jp/bis/teams/rst_h.html')
Team.create(:id => 8, :name => '日ハム', :home_stadium_id => 8, :url => 'http://npb.jp/bis/teams/rst_f.html')
Team.create(:id => 9, :name => 'ロッテ', :home_stadium_id => 9, :url => 'http://npb.jp/bis/teams/rst_m.html')
Team.create(:id => 10, :name => '西武', :home_stadium_id => 10, :url => 'http://npb.jp/bis/teams/rst_l.html')
Team.create(:id => 11, :name => 'オリックス', :home_stadium_id => 11, :url => 'http://npb.jp/bis/teams/rst_bs.html')
Team.create(:id => 12, :name => '楽天', :home_stadium_id => 12, :url => 'http://npb.jp/bis/teams/rst_e.html')
