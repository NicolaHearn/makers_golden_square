{{PROBLEM}} Multi-Class Planned Design Recipe
1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries




2. Design the Class System
Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com


               ┌────────────────────────────────────────────────────────────────────────────────────┐
               │                               My Planner Class                                     │
               │                                                                                    │
               │    @list_of_diary_entry =                                                          │
               │    @list_of_todos =                                                                │
               │    @list_of_contacts =                                                             │
               │                                                                                    │
               │                                                                                    │
               │  Methods:                                                                          │
               │                                                                                    │
               │  def read_diary(search by date?)                                                   │
               │   def read_speed(wpm,time)                                             ┌───────────┤
               │     def completed_todos                                                │           │
               │        def incompleted_todos                                           │           │
               │           def return_contacts                                                      │
               │                                                                                    │
               │                                                                                    │
               │    │                                                                               │
               │    │                                                                               │
               └────┴──────┬──────────────────────▲────────────────────────────────▲────────────────┘
                           │                      │                                │
                           │                      │                                │
                           │                      │                                │
┌──────────────────────────┴───┬─┐ ┌──────────────┴───────────────────┐      ┌─────┴───────────────────────────┐
│                              │ │ │                                  │      │                                 │
│                              │ │ │         To do Entry   Class      │      │          Contacts Class         │
│                              │ │ │                                  │      │                                 │
│           Diary Entry   Class  │ │                                  │      │                                 │
│                                │ │ hold Todo(string)                │      │   hold contact (name)           │
│                   Nic)         │ │ hold Todo(due date)              │      │   hold contact (phone number)   │
│     hold  date  (17/11 22)     │ │                                  │      │                                 │
│  hold   contents (Toda  I met  │ │   Methods:                       │      │   Method:                       │
│    hold contact                │ │     def return Todo              │      │    def return name              │
│                                │ │       def return duedate         │      │      def return phone number    │
│  Methods:                      │ │         def mark_complete        │      │                                 │
│  def return date               │ │           def complete?          │      │                                 │
│    def return contents         │ │                                  │      │                                 │
│                                │ │                                  │      │                                 │
│                             │  │ └──────────────────────────────────┘      └─────────────────────────────────┘
│                   │         │
└───────────────────┴─────────┴──


Also design the interface of each class in more detail.

class DiaryEntry 

def initialize
  # holds date
  # holds contents
end 

def return_date 
return date
end 

def return_contents
return contents
end 

class Todo

  def initialize
    # description
    # due date
    # complete?
  end

  def date
    # returns the date
  end

  def description
    # returns the description
  end

  def mark_complete?
    # changes status
  end

  def complete?
    # returns whether or not task is complete
  end
end



class MyPlanner

@list_of_diary_entry =
@list_of_todos =
@list_of_contacts =

def read_diary(date)
returns by date 
end 

def speed_read(wpm,minutes)
counts @list_of_diary_entry entry 
wpm*minutes / count_words 
returns speedest entry to read 
end 

def completed_todo
@list_of_todos.filter -> completed?
end 

def incompleted_todo
@list_of_todos.filter -> incompleted?
end 

def return_contacts 
@list_of_contacts.each -> puts name : contact
end 


3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

#integration tests: 

1. Integration of todo's in MyPlanner Class 

#returns incompleted tasks in MyPlanner Class 
my_planner = MyPlanner.new
task_one = Todo.new("buy milk", "18/11/22")
my_planner.add(task_one)
my_planner.incompleted_todo => ["buy milk"]


#returns completed tasks in MyPlanner Class
my_planner = MyPlanner.new
task_one = Todo.new("laundry", "20/11/22")
my_planner.add(task_one)
task_one.mark_complete
my_planner.completed_todo => ["laundry"]

2. Integration of diaryentries in MyPlanner Class 

#returns diary date 
my_planner = MyPlanner.new 
diaryentry = DiaryEntry.new("21/11/22", "content content content")
my_planner.date(diary_entry) => ["21/11/22"]

# return best entry to read
# return contacts 


Encode each example as a test. You can add to the above list as you go.

5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

