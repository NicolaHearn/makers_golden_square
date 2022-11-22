require "diary"
require "diary_entry"

describe "integration" do
  context "#add method" do
    it "adds one entries to the list contained in diary class" do
      diary = Diary.new
      entry1 = DiaryEntry.new("title", "contents")
      diary.add(entry1)
      expect(diary.all).to eq [entry1]
    end

    it "adds multiple entries to the list contained in diary class" do
      diary = Diary.new
      entry1 = DiaryEntry.new("title", "contents")
      entry2 = DiaryEntry.new("title2", "contents2")
      diary.add(entry1)
      diary.add(entry2)
      expect(diary.all).to eq [entry1, entry2]
    end
  end

  context "#count_words method" do
    it "can count the number of words of one diary entry" do
      diary = Diary.new
      entry1 = DiaryEntry.new("title", "one two three")
      diary.add(entry1)
      expect(diary.count_words).to eq 3
    end

    it "counts the words in multiple diary entries" do
      diary = Diary.new
      entry1 = DiaryEntry.new("title", "one two three")
      entry2 = DiaryEntry.new("title2", "four five six seven eight")
      diary.add(entry1)
      diary.add(entry2)
      expect(diary.count_words).to eq 8
    end
  end
  context "#reading_time method" do
    it "calculates reading time for a single entry" do
      diary = Diary.new
      entry1 = DiaryEntry.new("title", "one two three")
      diary.add(entry1)
      expect(diary.reading_time(1)).to eq 3
    end
  end
  context "#reading_time method" do
    it "calculates reading time for multiple entries entry" do
      diary = Diary.new
      entry1 = DiaryEntry.new("title", "one two three")
      entry2 = DiaryEntry.new("title2", "four five six seven")
      diary.add(entry1)
      diary.add(entry2)
      expect(diary.reading_time(3)).to eq 3
    end
    it "raises error if wpm <= 0" do
      diary = Diary.new
      entry1 = DiaryEntry.new("title", "one two three")
      diary.add(entry1)
      expect { diary.reading_time(-1) }.to raise_error "Words per minute must be positive"
    end
  end

  context "#find_best_entry_for_reading_time method" do
    it "returns the name of the entry that can be read by the user by speed specified" do
      diary = Diary.new
      entry1 = DiaryEntry.new("title", "one two three")
      entry2 = DiaryEntry.new("title2", "four")
      entry3 = DiaryEntry.new("title3", "five six seven eight nine ten")
      diary.add(entry1)
      diary.add(entry2)
      diary.add(entry3)
      expect(diary.find_best_entry_for_reading_time(3, 3)).to eq entry3
    end
  end

  it "raises error if wpm <= 0" do
    diary = Diary.new
    entry1 = DiaryEntry.new("title", "one two three")
    diary.add(entry1)
    expect { diary.find_best_entry_for_reading_time(-1, -1) }.to raise_error "Words per minute must be positive"
  end
end
