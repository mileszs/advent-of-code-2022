class StrategyGuide
  FIRST_POSITION_TRANSLATION = {
    'A' => 'Rock',
    'B' => 'Paper',
    'C' => 'Scissors'
  }.freeze

  SECOND_POSITION_TRANSLATION = {
    'X' => 'Rock',
    'Y' => 'Paper',
    'Z' => 'Scissors'
  }.freeze

  def initialize(file = 'strategy_guide.txt')
    @lines = File.readlines(file)
  end

  def decrypt
    @lines.map do |line|
      round = line.split(' ')
      [
        FIRST_POSITION_TRANSLATION[round[0]],
        SECOND_POSITION_TRANSLATION[round[1]]
      ].join(' ')
    end
  end
end
