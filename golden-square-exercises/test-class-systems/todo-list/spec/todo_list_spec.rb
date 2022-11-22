require 'todo_list'

describe TodoList do
  it "constructs" do
    my_list = TodoList.new
    expect(my_list).to be_instance_of(TodoList)
  end
end