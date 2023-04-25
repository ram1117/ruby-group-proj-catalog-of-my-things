require_relative 'item'
class Game < Item
  def initialize(name, date, multiplayer, last_played_at)
    super(name, date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def print_data
    "Game Title - #{@name} | Multiplayer - #{@multiplayer} | Date - #{@publish_date}\n
    | last_played_at - #{@last_played_at}\n"
  end

  private

  def can_be_archived?
    super && (Time.now.year - @last_played_at.year) >= 2
  end
end
