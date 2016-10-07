# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# TODO: 緯度経度
TeamStadium.create(:id => 1, :name => '東京ドーム')
TeamStadium.create(:id => 2, :name => '明治神宮野球場')
TeamStadium.create(:id => 3, :name => '阪神甲子園球場')
TeamStadium.create(:id => 4, :name => 'MAZDA Zoom-Zoom スタジアム広島')
TeamStadium.create(:id => 5, :name => 'ナゴヤドーム')
TeamStadium.create(:id => 6, :name => '横浜スタジアム')
TeamStadium.create(:id => 7, :name => '福岡Yahoo! JAPANドーム')
TeamStadium.create(:id => 8, :name => '札幌ドーム')
TeamStadium.create(:id => 9, :name => 'QVCマリンフィールド')
TeamStadium.create(:id => 10, :name => '西武ドーム')
TeamStadium.create(:id => 11, :name => '京セラドーム大阪')
TeamStadium.create(:id => 12, :name => '楽天Koboスタジアム宮城')

Team.create(:id => 1, :name => '巨人', :home_stadiam_id => 1, :url => 'http://npb.jp/bis/teams/rst_g.html')
Team.create(:id => 2, :name => 'ヤクルト', :home_stadiam_id => 2, :url => 'http://npb.jp/bis/teams/rst_s.html')
Team.create(:id => 3, :name => '阪神', :home_stadiam_id => 3, :url => 'http://npb.jp/bis/teams/rst_t.html')
Team.create(:id => 4, :name => '広島', :home_stadiam_id => 4, :url => 'http://npb.jp/bis/teams/rst_c.html')
Team.create(:id => 5, :name => '中日', :home_stadiam_id => 5, :url => 'http://npb.jp/bis/teams/rst_d.html')
Team.create(:id => 6, :name => '横浜DeNA', :home_stadiam_id => 6, :url => 'http://npb.jp/bis/teams/rst_db.html')
Team.create(:id => 7, :name => 'ソフトバンク', :home_stadiam_id => 7, :url => 'http://npb.jp/bis/teams/rst_h.html')
Team.create(:id => 8, :name => '日ハム', :home_stadiam_id => 8, :url => 'http://npb.jp/bis/teams/rst_f.html')
Team.create(:id => 9, :name => 'ロッテ', :home_stadiam_id => 9, :url => 'http://npb.jp/bis/teams/rst_m.html')
Team.create(:id => 10, :name => '西武', :home_stadiam_id => 10, :url => 'http://npb.jp/bis/teams/rst_l.html')
Team.create(:id => 11, :name => 'オリックス', :home_stadiam_id => 11, :url => 'http://npb.jp/bis/teams/rst_bs.html')
Team.create(:id => 12, :name => '楽天', :home_stadiam_id => 12, :url => 'http://npb.jp/bis/teams/rst_e.html')
