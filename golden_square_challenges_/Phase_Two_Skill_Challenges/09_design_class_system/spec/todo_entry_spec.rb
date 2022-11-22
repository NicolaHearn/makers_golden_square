require 'todo_entry'

RSpec.describe Todo do
  it "constructs the todo" do
    task_one = Todo.new("buy milk", "11/12/22")
    expect(task_one.date).to eq "11/12/22"
  end
 
  it "returns the status of the todo(complete or not?)" do 
    task_one = Todo.new("buy milk","11/12/22")
    expect(task_one.complete?).to eq false 
  end

  it "marks a task complete" do
    task_one = Todo.new("feed the rabbit", "17/11/22")
    task_one.mark_complete
    expect(task_one.complete?).to eq true 
  end
end
