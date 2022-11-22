require "diary"

RSpec.describe Diary do
  context "given no entry added" do
    it "returns empty" do
      diary = Diary.new
      expect(diary.all).to eq []
    end
    it "returns 0 reading time" do
      diary = Diary.new
      expect(diary.reading_time(100)).to eq 0
    end
  end
end
