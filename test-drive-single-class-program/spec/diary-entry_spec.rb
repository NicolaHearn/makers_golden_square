require 'diary-entry'

describe DiaryEntry do
  it "constructs and returns the title and contents of the diary entry" do
    diary_entry = DiaryEntry.new("Playdate", "Playdate Leo and Oumar")
    expect(diary_entry.title).to eq "Playdate"
    expect(diary_entry.contents).to eq "Playdate Leo and Oumar"
  end
  it "returns the number of words in the contents" do
    diary_entry = DiaryEntry.new("Playdate", "Playdate Leo and Oumar")
    expect(diary_entry.count_words).to eq 4
  end
  it "returns an estimate of reading time (rounded up to the nearest minute) for the contents of the diary entry" do
    diary_entry = DiaryEntry.new("Playdate", "word " * 300)
    expect(diary_entry.reading_time(200)).to eq 2
  end
  context "with contents readable within the given time" do
    it "returns the full contents" do
      diary_entry = DiaryEntry.new("Playdate", "word word word")
      expect(diary_entry.reading_chunk(200, 2)).to eq "word word word"
    end
  end
  context "with contents that are unreadable with the given time" do
    it "returns a readable chunk" do
      diary_entry = DiaryEntry.new("my_title", "one two three")
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq "one two"
    end
    it "returns the next chunk, next time we are asked" do
      diary_entry = DiaryEntry.new("my_title", "one two three")
      diary_entry.reading_chunk(2, 1)
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq "three"
    end
    it "restarts after reading the whole contents" do
      diary_entry = DiaryEntry.new("my_title", "one two three")
      diary_entry.reading_chunk(2, 1)
      diary_entry.reading_chunk(2, 1)
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq "one two"
    end
    it "restarts if it finishes exactly on the last word" do
      diary_entry = DiaryEntry.new("my_title", "one two three")
      diary_entry.reading_chunk(2, 1)
      diary_entry.reading_chunk(1, 1)
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq "one two"
    end
  end
  it "fails if wpm is 0" do
    diary_entry = DiaryEntry.new("Playdate", "Leo and Oumar playdate")
    expect { diary_entry.reading_time(0) }.to raise_error "Reading speed must be above zero."
    expect { diary_entry.reading_chunk(0, 2) }.to raise_error "Reading speed must be above zero."
  end
end