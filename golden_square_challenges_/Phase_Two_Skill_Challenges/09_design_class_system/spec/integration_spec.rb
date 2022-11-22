require 'todo_entry'
require 'diary_entry'
require 'my_planner'

RSpec.describe "integration" do
  it "returns incompleted todos from the Todo Class" do
    my_planner = MyPlanner.new
    task_one = Todo.new("buy milk", "18/11/22")
    my_planner.add_todos(task_one)
    expect(my_planner.incompleted_todo).to eq [task_one]
  end
  it "returns completed todos from the Todo Class" do
    my_planner = MyPlanner.new
    task_one = Todo.new("wash the floor", "18/11/22")
    my_planner.add_todos(task_one)
    task_one.mark_complete
    expect(my_planner.completed_todo).to eq [task_one]
  end
end
