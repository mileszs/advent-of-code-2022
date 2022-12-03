class StrategyGuide
  FIRST_POSITION_TRANSLATION = {
    'A' => 'Rock',
    'B' => 'Paper',
    'C' => 'Scissors'
  }.freeze

  WINS = {
    'Rock' => 'Paper',
    'Paper' => 'Scissors',
    'Scissors' => 'Rock'
  }.freeze

  class NeededResult
    def initialize(code)
      @code = code
    end

    def loss?
      @code == 'X'
    end

    def draw?
      @code == 'Y'
    end

    def win?
      @code == 'Z'
    end
  end

  def initialize(file = 'strategy_guide.txt')
    @lines = File.readlines(file)
  end

  def decrypt
    @lines.map do |line|
      round = line.split
      opponent = FIRST_POSITION_TRANSLATION[round[0]]
      needed_result = NeededResult.new(round[1])
      [opponent, my_throw(needed_result, opponent)]
    end
  end

  private

  def my_throw(needed_result, opponent)
    return WINS[opponent] if needed_result.win?
    return WINS.invert[opponent] if needed_result.loss?

    opponent
  end
end
