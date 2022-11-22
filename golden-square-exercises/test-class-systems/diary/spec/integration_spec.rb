require 'diary'
require 'diary_entry'


describe 'integration' do
  context "when we add diary entries to the diary" do
    it "comes back in the list" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "it rained")
      entry_2 = DiaryEntry.new("Tuesday", "it was foggy")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.all).to eq [entry_1, entry_2]
    end
    it "counts the number of words in the contents of all entries" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "it rained")
      entry_2 = DiaryEntry.new("Tuesday", "it was foggy")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.count_words).to eq 5
    end
    it "returns the reading time for the entire contents of the diary" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("Monday", "word " * 200)
        entry_2 = DiaryEntry.new("Tuesday", "word " * 500)
        diary.add(entry_1)
        diary.add(entry_2)
        diary.count_words
        expect(diary.reading_time(200)).to eq 4
    end
    context "when given a reading speed and a number of minutes" do
      it "calculates the length of text that is readable and returns the diary entry that is the closest match, or the first one in the list if there are two of the same length" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("Monday", "one two three four five six seven eight nine ten")
        entry_2 = DiaryEntry.new("Wednesday", "one two")
        entry_3 = DiaryEntry.new("Tuesday", "one two three four five six seven")
        diary.add(entry_1)
        diary.add(entry_2)
        diary.add(entry_3)
        expect(diary.find_best_entry_for_reading_time(2, 3)).to eq entry_2.title
      end
    end
  end
end