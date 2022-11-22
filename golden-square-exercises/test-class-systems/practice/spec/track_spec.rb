require 'track'

describe Track do
  it "constructs" do
    track = Track.new("my_title", "my_artist")
    expect(track.title).to eq "my_title"
  end

  describe "#format" do
    it "formats the title and artists into a single string" do
      track = Track.new("my_title", "my_artist")
      expect(track.format).to eq "my_title by my_artist"
    end
  end
end