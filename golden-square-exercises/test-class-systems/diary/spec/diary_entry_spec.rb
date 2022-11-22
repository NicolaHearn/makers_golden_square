require 'diary_entry'

describe DiaryEntry do
  it "constructs" do
    entry = DiaryEntry.new("Monday", "it rained")
    expect(entry.title).to eq "Monday"
    expect(entry.contents).to eq "it rained"
  end
  it "counts the number of words in the contents as an integer" do
    entry = DiaryEntry.new("Monday", "it rained")
    expect(entry.count_words).to eq 2
  end
  it "give an estimate in minutes of the time it takes to read the contents of the entry" do
    entry = DiaryEntry.new("Monday", "word " * 300)
    entry.count_words
    expect(entry.reading_time(200)).to eq 2
  end
end