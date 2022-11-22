require "music"

RSpec.describe do
  context "adds a song" do
    it "returns the list with one song" do
      tracks = Music.new
      tracks.play("Hey Jude")
      expect(tracks.list).to eq ["Hey Jude"]
    end
  end

  context "adds two songs" do
    it "returns the list with two songs" do
      tracks = Music.new
      tracks.play("Hey Jude")
      tracks.play("Sweet Caroline")
      expect(tracks.list).to eq ["Hey Jude", "Sweet Caroline"]
    end
  end

  context "lists songs without adding" do
    it "return an empty list" do
      tracks = Music.new
      expect(tracks.list).to eq []
    end
  end

  context "adding an empty song" do
    it "returns an empty list" do
      tracks = Music.new
      tracks.play("")
      expect(tracks.list).to eq [""]
    end
  end

  context "adding song that has already been played" do
    it "fails" do
      tracks = Music.new
      tracks.play("Hey Jude")
      tracks.play("Sweet Caroline")
      expect { tracks.play("Hey Jude") }.to raise_error "Track has already been played."
    end
  end
end