class DiaryEntry
  def initialize(title, contents) 
    #title, contents are strings
    @title = title
    @contents = contents
    @furthest_word_read = 0
  end

  def title
    # Returns the title as string
    return "#{@title}"
  end

  def contents
    # Returns the contents as a string
    return "#{@contents}"
  end

  def count_words
    # Returns the number of words in the contents as an integer
    @contents.split(" ").count
  end

  def reading_time(wpm)
    # wpm is an integer representing the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes for the contents at the given wpm.
    fail "Reading speed must be above zero." unless wpm.positive?
    return ((@contents.split(" ").count)/wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    fail "Reading speed must be above zero." unless wpm.positive?
    # 'wpm' is an integer representing the number of words the user can read per minute
    # 'minutes' is an integer representing the number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read in the given number of minutes.
    # If called again, 'reading_chunk' should return the next chunk, skipping what has already been read, until the contents are fully read. 
    # The next call after that is should after that it should restart from the beginning.
    #p "multiplies wpm and minutes to see how many words we can read"
    no_words_we_can_read = wpm * minutes
    #p "Answer: #{no_words_we_can_read}"
    start_from = @furthest_word_read
    end_at = @furthest_word_read + no_words_we_can_read
    #p "calculates where to start reading from. First time it is #{@furthest_word_read}, second time it will be #{@furthest_word_read + no_words_we_can_read}, which is also the current end point: #{end_at}"
    word_list = words[start_from, end_at]
    # p "creates an array of words from the start point to the end point #{word_list}"
    #p "if the end point is greater than the number of words read, it sets furthest word read to be 0, therefore starting again."
    if end_at >= count_words
      @furthest_word_read = 0
    else
      @furthest_word_read = end_at
    end
    #p "updates the furthest word read: #{@furthest_word_read} so it knows where to start from next time"
    #p "returns the chunk"
    return word_list.join(" ")
  end

  private

  def words
    @contents.split(" ")
  end
end

# diary_entry = DiaryEntry.new("Playdate", "One two three")
# p diary_entry.title
# p diary_entry.contents

# diary_entry = DiaryEntry.new("my_title", "one two three")
# puts diary_entry.reading_chunk(2, 1)
# puts diary_entry.reading_chunk(2, 1)
# chunk = diary_entry.reading_chunk(2, 1)
# puts chunk
# puts diary_entry.reading_chunk(2, 1)
