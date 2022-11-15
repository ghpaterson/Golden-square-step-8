require 'todo'

RSpec.describe Todo do
    it "returns the task" do
        todo = Todo.new("buy eggs")
        expect(todo.task).to eq "buy eggs"
    end

    it "returns the task as : done" do
        todo = Todo.new("buy eggs")
        todo.mark_done!
        expect(todo.task).to eq "buy eggs: done"
    end

    it "returns the task as : done" do
        todo = Todo.new("buy eggs")
        todo.mark_done!
        expect(todo.done?).to eq true
    end
end