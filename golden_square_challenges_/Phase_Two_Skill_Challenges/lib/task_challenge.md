{{PROBLEM}} Method Design Recipe
1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.


2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

task_checker(string)
checks if a string includes "#TODO."
returns true 
else, returns false 

- empty string?
- string doesn't include #? or .?
- lowercase? 


3. Create Examples as Tests
Make a list of examples of what the method will take and return.

task_checker("#TODO.") -> true
task_checker("#todo.") -> false
task_checker("todo") -> false
task_checker(" ") -> false
task_checker("999") -> false
task_checker("#ToDo.") -> false

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.