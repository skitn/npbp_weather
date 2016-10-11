module TeamsHelper
  def birthday(player)
    player.birth_year.to_s + "年" + player.birth_month.to_s + "月" + player.birth_day.to_s + "日"
  end
end
