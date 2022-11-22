 {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem
    
    As a user
    So that I can keep track of my tasks
    I want a program that I can add todo tasks to and see a list of them.

    As a user
    So that I can focus on tasks to complete
    I want to mark tasks as complete and have them disappear from the list.


## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class TodoList
  def initialize
    #set up array to hold tasks 
  end

  def add(task) # task is a string
    # adds task to todo list  
    # No return value
  end

  def view
    # Throws an exception if no task is set
    # Otherwise, returns a string reminding the user to do the task
  end

  def complete(task)  
  # pass method task thats been completed 
  # delete that task from the todo list 
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
todo = ToDoList.new 
todo.add("Walk the dog")
todo.view => "Walk the dog"

#2 view an empty list 
 todo = TodoList.new 
 todo.view => [] #empty list


# 3
todo = ToDoList.new 
todo.add("Walk the dog")
todo.view => "Walk the dog"
todo.complete => removes walk the dog 

# 4  #try to create an empty task 
todo = TodoList.new 
todo.add("") => fail "invalid task"

#5 complete a task thats not on the list 
todo = TodoList.new 
todo.add("tidy bedroom")
todo.complete("wash the car") => fail "task not on list" # throw an error as nothing to complete?* 

#6  
todo = ToDoList.new 
todo.add("Walk the dog")
todo.add("wash the car")
todo.add("tidy bedroom")
todo.complete("walk the dog")
todo.complete("wash the car")
todo.complete("tidy bedroom")
todo.view => [] # return an empty array as all tasks completed  

#7 
todo = ToDoList.new 
todo.add("Walk the dog")
todo.add("wash the car")
todo.complete("walk the dog")
todo.view => ["Wash the car"]

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._