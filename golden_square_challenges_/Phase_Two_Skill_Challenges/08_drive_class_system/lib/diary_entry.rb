class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @furthest_word_read = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    @contents.split(" ").length
  end

  def reading_time(wpm)
    raise "Words per minute must be positive" if !wpm.positive?
    minutes = (count_words / wpm.to_f).ceil
    return minutes
  end

  def reading_chunk(wpm, minutes)
    raise "Words per minute must be positive" if !wpm.positive?
    no_words_we_can_read = wpm * minutes
    start_from_at = @furthest_word_read
    stop_reading_at = @furthest_word_read + no_words_we_can_read
    word_list = words[start_from_at, stop_reading_at]
    if stop_reading_at >= count_words
      @furthest_word_read = 0
    else
      @furthest_word_read = stop_reading_at
    end
    return word_list.join(" ")
  end

  private

  def words
    return @contents.split(" ")
  end
end
