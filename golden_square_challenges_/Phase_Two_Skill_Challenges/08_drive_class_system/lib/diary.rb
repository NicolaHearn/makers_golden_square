# File: lib/diary.rb
class Diary
  def initialize
    @listof_entries = []
  end

  def add(entry)
    @listof_entries << entry
  end

  def all
    @listof_entries
  end

  def count_words
    total = 0
    @listof_entries.each do |entry|
      total += entry.count_words
    end
    return total
  end

  def reading_time(wpm)
    raise "Words per minute must be positive" if !wpm.positive?
    (count_words / wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    raise "Words per minute must be positive" if !wpm.positive?

    user_time = wpm * minutes
    readable = @listof_entries.select do |entry|
      entry.count_words <= user_time
    end
    readable.max_by { |entry| entry.count_words }
  end
end
