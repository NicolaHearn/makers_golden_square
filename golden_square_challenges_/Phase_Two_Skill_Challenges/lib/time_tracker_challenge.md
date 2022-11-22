{{PROBLEM}} Method Design Recipe
1. Describe the Problem
One
As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

def time_tracker_challenge(string)
# Takes string and splits it and counts it, then returns count / 200.a
# Returns reading_time as words per minute.



# The method doesn't print anything or have any other side-effects
3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# EXAMPLE

time_tracker_challenge("") => 0
time_tracker_challenge("hello " * 5) => 1
time_tracker_challenge("hello " * 200) => 1
time_tracker_challenge("hello " * 2000) => 10


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.