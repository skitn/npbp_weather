module TeamsHelper
  def birthday(player)
    player.birthday.strftime "%Y年%m月%d日"
  end
end
