{PROBLEM}} Method Design Recipe
1. Describe the Problem
As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.
def grammar_checker : true or false if sentence has suitable punctuation and capitals
takes an argument as a string, string of words 

3. Create Examples as Tests
Make a list of examples of what the method will take and return.

grammar_checker("") => false
grammar_checker("hello world") => false
grammar_checker("Hello world.") => true
grammar_checker("Hello world!") => true 
grammar_checker("How are you?") => true
grammar_checker("Hello world") => false
grammar_checker("hello world.") => false
grammar_checker("Hello world-") => false
grammar_checker("Hello World.") => true
grammar_checker("Hello World".) => error ?

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

