# require './diary_entry.rb'
class Diary
    def initialize
      @entries = []
      @word_count = 0
    end
  
    def add(entry) 
      @entries << entry
    end
  
    def all
      @entries
    end
  
    def count_words
      @entries.each do |entry|
        @word_count += entry.count_words
      end
      return @word_count
    end
  
    def reading_time(wpm)
      (@word_count/wpm.to_f).ceil
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
          # `wpm` is an integer representing the number of words the user can read
          # per minute.
          # `minutes` is an integer representing the number of minutes the user
          # has to read.
      # Returns an instance of diary entry representing the entry that is closest 
      # to, but not over, the length that the user could read in the minutes they
      # have available given their reading speed.
     
      @words_can_read = wpm * minutes
      p "calculates the number of words they can read #{@words_can_read}}"
      @word_difference = @words_can_read
      p "sets the starting word_difference to be #{@words_can_read}}"
      @closest_entry = DiaryEntry.new("Thursday", "It was sunny")
      @entries.each do |entry|
        # p "#{entry.title}"
      
        # entry.count_words
        # p "#{@entries}"
        if (@words_can_read - entry.count_words) < 0
          next
        elsif (@words_can_read - entry.count_words) < @word_difference
          p " if the count for this entry is less than the current difference, set a new word difference #{@word_difference}"
          @word_difference = (@words_can_read - entry.count_words)
          @closest_entry = entry.title
        end
      end
      @closest_entry
    end
end

# diary = Diary.new
# entry_1 = DiaryEntry.new("Monday", "one two three four five six seven eight nine ten")
# entry_1a = DiaryEntry.new("Thursday", "one, two, three, four")
# entry_2 = DiaryEntry.new("Tuesday", "one two three four five six")
# entry_3 = DiaryEntry.new("Wednesday", "one two")
# diary.add(entry_1)
# diary.add(entry_2)
# diary.add(entry_3)
# diary.find_best_entry_for_reading_time(2, 3)
