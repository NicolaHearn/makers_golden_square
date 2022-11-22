require 'diary'

describe Diary do
  it "constructs and is initially empty" do
    diary = Diary.new
    expect(diary.all).to eq []
  end

  
end

