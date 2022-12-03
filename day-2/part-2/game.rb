require_relative './strategy_guide'
require_relative './round'

class Game
  def initialize(strategy_guide = 'strategy_guide.txt')
    @strategy_guide = StrategyGuide.new(strategy_guide)
    @rounds = @strategy_guide.decrypt
    @total = 0
  end

  def play
    @rounds.each do |r|
      round = Round.new(r)
      @total += round.score
      puts round
    end
  end

  def score
    @total
  end
end
