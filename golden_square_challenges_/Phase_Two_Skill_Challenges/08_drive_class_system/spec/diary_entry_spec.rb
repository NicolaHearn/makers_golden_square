require 'diary_entry'

RSpec.describe DiaryEntry do
  context "When given the title" do
    it "returns the title as a string" do
      diary_entry = DiaryEntry.new("my title", "my contents")
      expect(diary_entry.title).to eq "my title"
    end
  end
  context "When given content" do
    it "returns the content as a string" do
      diary_entry = DiaryEntry.new("my title", "my contents")
      expect(diary_entry.contents).to eq "my contents"
    end
  end

  context "When given a title and contents containing 3 words" do
    it "returns the number of words in the contents" do
      diary_entry = DiaryEntry.new("my title", "contents contents contents")
      expect(diary_entry.count_words).to eq 3
    end
  end

  context "When given a title and contents containing 0 words" do
    it "returns the number of words in the contents" do
      diary_entry = DiaryEntry.new("my title", "")
      expect(diary_entry.count_words).to eq 0
    end
  end

  context "reading_time returns how long(to nearest minute)" do
    it "takes to read contents given reading speed" do
      diary_entry = DiaryEntry.new("my title", "one two three")
      expect(diary_entry.reading_time(3)).to eq 1
       end
   end 

    it "takes to read contents given reading speed" do
      diary_entry = DiaryEntry.new("my title", "one two three")
      expect(diary_entry.reading_time(2)).to eq 2
    end

    it "raises an error when wpm is <= 0" do
        diary_entry = DiaryEntry.new("my title", "one two three")
        expect { diary_entry.reading_time(-1) }.to raise_error "Words per minute must be positive"
    end

  context "reading_chunk returns readable string within given number of minutes" do 
    it "returns string that is readable" do 
        diary_entry = DiaryEntry.new("my title", "one two three four")
        expect(diary_entry.reading_chunk(2,2)).to eq "one two three four"
     end
    end 

     it "returns string that is readable after chunk has been called once" do 
        diary_entry = DiaryEntry.new("my title", "one two three four five six seven eight")
        diary_entry.reading_chunk(2,2)
        expect(diary_entry.reading_chunk(2,2)).to eq "five six seven eight"
     end

   it "returns string that is readable after chunk has been called once" do 
    diary_entry = DiaryEntry.new("my title", "one two three four five six seven eight")
    diary_entry.reading_chunk(2,2)
    diary_entry.reading_chunk(2,2)
    expect(diary_entry.reading_chunk(2,2)).to eq "one two three four"
   end
   it "raises error if wpm is <= 0" do 
    diary_entry = DiaryEntry.new("my title", "one two three four five six seven eight")
    expect {diary_entry.reading_chunk(-4,2) }.to raise_error "Words per minute must be positive"
 end
end