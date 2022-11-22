{{PROBLEM}} Class Design Recipe
1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.


2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

# EXAMPLE

class Music
  def initialize
    # store track here as an array 
  end

  def play(track) # track as a string
    # No return value 
    # push the track into the array 
    # error if track is already added?
  end

  def list 
    # return the track list has been stored after they've been played 
  end
end

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1 add a song 
tracks = Music.new 
tracks.play("Hey Jude")
track.list => ["Hey Jude"]

# 2 list songs without adding
tracks = Music.new
tracks.list => []

# 3 add two songs and returns two songs 
tracks = Music.new 
tracks.play("Hey Jude)
tracks.play("Sweet Caroline")
tracks.list => ["Hey Jude", "Sweet Caroline"] 

#4 add a song that had already been added 
tracks = Music.new 
tracks.play("Hey Jude)
tracks.play("Sweet Caroline")
tracks.play("Sweet Caroline) => fails "Track has already been played" 

#5 tries to add empty song
tracks.new = Music.new
tracks.play("") => fails "Please enter a song" 


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.