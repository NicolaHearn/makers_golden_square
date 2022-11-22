require "todo"
require "todo_list"

describe "integration" do
  context "#complete method" do
    it "returns a list of completed todos" do
      list = TodoList.new
      todo_one = Todo.new("tidy bedroom")
      todo_two = Todo.new("make soup")
      list.add(todo_one)
      list.add(todo_two)
      todo_two.mark_done!
      expect(list.complete).to eq [todo_two]
    end
  end

  context "#incomplete method" do
    it "returns a list of uncompleted todos" do
      list = TodoList.new
      todo_one = Todo.new("tidy bedroom")
      todo_two = Todo.new("make soup")
      todo_three = Todo.new("clean car")
      list.add(todo_one)
      list.add(todo_two)
      list.add(todo_three)
      todo_three.mark_done!
      expect(list.incomplete).to eq [todo_one, todo_two]
    end
  end

  context "#give_up! method" do
    it "marks all todos as complete" do
      list = TodoList.new
      todo_one = Todo.new("tidy bedroom")
      todo_two = Todo.new("make soup")
      todo_three = Todo.new("clean car")
      list.add(todo_one)
      list.add(todo_two)
      list.add(todo_three)
      list.give_up!
      expect(list.complete).to eq [todo_one, todo_two, todo_three]
    end
  end
end
