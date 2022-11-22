
Todo: 

def task 
returns the task as a string 

def mark_done! 
marks the todo as done


done?
returns true if the task is done, 
otherwise false
call done when it hasn't been marked done => false


Todo list :

add (todo)
-> todo is an instance of Todo, it knows what is inside of it, 
return nothing.

incomplete 
returns all non-done todos 
can check todo for whether incomplete

complete 
returns all complete todos
can check todo for whether complete

give_up! 
marks all todos as complete 
uses mark_done method to mark all complete 
