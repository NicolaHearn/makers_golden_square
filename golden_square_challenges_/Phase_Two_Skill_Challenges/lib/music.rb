class Music
  def initialize
    @list = []
  end

  def play(track)
    fail "Track has already been played." if @list.include?(track)
    @list << track
  end

  def list
    @list
  end
end

