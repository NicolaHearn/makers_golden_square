def time_tracker_challenge(string)
  words = string.split(" ").length
  minutes = (words / 200.to_f).ceil
end
