require 'todo_list'

describe TodoList do
    context "given no additions" do
        it "#complete returns empty list" do
            list = TodoList.new
            expect(list.complete).to eq []
        end
    end

    context "given no additions" do
        it "#incomplete returns empty list" do
            list = TodoList.new
            expect(list.incomplete).to eq []
        end
    end
end