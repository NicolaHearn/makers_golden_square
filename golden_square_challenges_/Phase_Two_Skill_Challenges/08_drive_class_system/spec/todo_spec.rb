require 'todo'

describe Todo do
    it "creates todo" do
      todo = Todo.new("tidy bedroom")
      expect(todo.task).to eq "tidy bedroom"
    end
  
    describe "#mark_done! method" do
      it "marks the todo as done" do
        todo = Todo.new("tidy bedroom")
        todo.mark_done!
        expect(todo.done?).to eq true
      end
    end
  
    describe "#done? method" do
      it "returns false if todo has not been marked as done" do
        todo = Todo.new("tidy bedroom")
        expect(todo.done?).to eq false
      end
    end
end