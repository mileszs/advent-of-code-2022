require_relative './throw'

class Round
  def initialize(thrown)
    @thrown = thrown
    @opponent = Throw.new(thrown.split[0].chomp.strip)
    @me = Throw.new(thrown.split[1].chomp.strip)
  end

  def score
    throw_score + result_score
  end

  def to_s
    format(
      'Round: %<opponent>8s <> %<me>-8s |> %<throw_score>-1d + %<result_score>-1d = %<score>-4d',
      { opponent: @opponent, me: @me, throw_score: throw_score, result_score: result_score, score: score }
    )
  end

  private

  def throw_score
    @me.score
  end

  def result_score
    return 6 if win?
    return 3 if draw?

    0
  end

  def win?
    case @opponent.to_s
    when 'Rock'
      @me == 'Paper'
    when 'Paper'
      @me == 'Scissors'
    when 'Scissors'
      @me == 'Rock'
    end
  end

  def draw?
    @opponent == @me
  end
end
