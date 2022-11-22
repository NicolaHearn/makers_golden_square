require "todo"

RSpec.describe TodoList do
  it "returns an empty list" do
    todo = TodoList.new
    expect(todo.view).to eq []
  end

  it "adds a task" do
    todo = TodoList.new
    todo.add("Walk the dog")
    expect(todo.view).to eq ["Walk the dog"]
  end

  it "removes a task" do
    todo = TodoList.new
    todo.add("Walk the dog")
    todo.complete("Walk the dog")
    expect(todo.view).to eq []
  end

  context "when passed invalid tasks" do
    it "fails when it tries to add an empty task" do
      todo = TodoList.new
      expect { todo.add("") }.to raise_error "Invalid task"
    end

    it "fails when trying to complete a task not on the list" do
      todo = TodoList.new
      todo.add("Walk the dog")
      expect { todo.complete("Wash the car") }.to raise_error "Task not on list"
    end
  end

  it "returns an empty array as all tasks completed" do
    todo = TodoList.new
    todo.add("walk the dog")
    todo.add("wash the car")
    todo.add("tidy bedroom")
    todo.complete("walk the dog")
    todo.complete("wash the car")
    todo.complete("tidy bedroom")
    expect(todo.view).to eq []
  end

  it "returns remaining tasks" do
    todo = TodoList.new
    todo.add("walk the dog")
    todo.add("wash the car")
    todo.add("tidy bedroom")
    todo.complete("walk the dog")
    todo.complete("wash the car")
    expect(todo.view).to eq ["tidy bedroom"]
  end
end
