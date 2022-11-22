require 'music_library'

describe MusicLibrary do
  context "initially" do
    it "is empty" do
      music_library = MusicLibrary.new
      music_library.all
      expect(music_library.all).to eq []
    end
    it "responds to searches with an empty list" do
      music_library = MusicLibrary.new
      expect(music_library.search_by_title("game")).to eq []
    end
  end 
end