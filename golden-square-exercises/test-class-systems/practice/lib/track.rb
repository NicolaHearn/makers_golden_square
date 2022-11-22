class Track
    def initialize(title, artist) # title and artist are both strings
    @title = title
    @artist = artist
    end
  
    def title
      "#{@title}"
    end

    def artist
      @artist
    end
  
    def format
      return "#{@title} by #{@artist}"
    end
  end