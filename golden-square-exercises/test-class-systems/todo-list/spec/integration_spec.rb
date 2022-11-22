require 'todo_list'
require 'todo'

describe "integration" do
  it "adds tasks to the todo list and displays them as a list" do
    my_tasks = TodoList.new
    task_1 = Todo.new("Clean the bathroom")
    task_2 = Todo.new("Tidy up")
    my_tasks.add(task_1)
    my_tasks.add(task_2)
    expect(my_tasks.incomplete).to eq "Clean the bathroom/nTidy up"
  end
  it "returns a list of tasks that are marked as incomplete" do
    my_tasks = TodoList.new
    task_1 = Todo.new("Clean the bathroom")
    task_2 = Todo.new("Tidy up")
    task_3 = Todo.new("Wash the car")
    task_4 = Todo.new("Ironing")
    my_tasks.add(task_1)
    my_tasks.add(task_2)
    my_tasks.add(task_3)
    my_tasks.add(task_4)
    task_1.mark_done!
    task_3.mark_done!
    expect(my_tasks.incomplete).to eq "Tidy up/nIroning"
  end
  it "returns a list of tasks that are marked as complete" do
    my_tasks = TodoList.new
    task_1 = Todo.new("Clean the bathroom")
    task_2 = Todo.new("Tidy up")
    task_3 = Todo.new("Wash the car")
    task_4 = Todo.new("Ironing")
    my_tasks.add(task_1)
    my_tasks.add(task_2)
    my_tasks.add(task_3)
    my_tasks.add(task_4)
    task_1.mark_done!
    task_3.mark_done!
    expect(my_tasks.complete).to eq "Clean the bathroom/nWash the car"
  end
  it "marks all todos as complete" do
    my_tasks = TodoList.new
    task_1 = Todo.new("Clean the bathroom")
    task_2 = Todo.new("Tidy up")
    task_3 = Todo.new("Wash the car")
    task_4 = Todo.new("Ironing")
    my_tasks.add(task_1)
    my_tasks.add(task_2)
    my_tasks.add(task_3)
    my_tasks.add(task_4)
    my_tasks.give_up!
    expect(my_tasks.complete).to eq "Clean the bathroom/nTidy up/nWash the car/nIroning"
  end
end