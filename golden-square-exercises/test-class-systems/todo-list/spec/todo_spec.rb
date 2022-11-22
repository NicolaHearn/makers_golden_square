require 'todo.rb'

describe Todo do
  it "constructs" do
    my_task = Todo.new("Clean the bathroom")
    expect(my_task).to be_instance_of(Todo)
    expect(my_task.task).to eq "Clean the bathroom"
  end
  it "marks a task as complete" do
    my_task = Todo.new("Clean the bathroom")
    my_task.mark_done!
    my_task.mark_done!
    expect(my_task.done?).to eq true
  end
end