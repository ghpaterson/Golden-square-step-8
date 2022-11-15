require 'todo'
require 'todo_list'

RSpec.describe "Integrated" do
    context "When Todos are added to the list" do
        it "returns list of todos" do
            todo_list = TodoList.new
            todo1 = Todo.new("Walk the dog")
            todo_list.add(todo1)
            expect(todo_list.incomplete).to eq [todo1]
        end
    end

    context "When two Todos have been added" do
        it "returns a list of completed todos" do
            todo_list = TodoList.new
            todo1 = Todo.new("Walk the dog")
            todo2 = Todo.new("Wash the car")
            todo_list.add(todo1)
            todo_list.add(todo2)
            expect(todo_list.incomplete).to eq [todo1, todo2]
        end
    end

    context "When a Todo has been completed" do
        it "returns a list of completed todos" do
            todo_list = TodoList.new
            todo1 = Todo.new("Walk the dog")
            todo2 = Todo.new("Wash the car")
            todo_list.add(todo1)
            todo_list.add(todo2)
            todo1.mark_done!
            expect(todo_list.complete).to eq [todo1]
        end
    end

    context "When you want to mark all tests as done" do
        it "returns all tasks as : done" do
            todo_list = TodoList.new
            todo1 = Todo.new("Walk the dog")
            todo2 = Todo.new("Wash the car")
            todo_list.add(todo1)
            todo_list.add(todo2)
            todo_list.give_up!
            expect(todo_list.complete).to eq [todo1, todo2]
        end
    end

    context "When you want to mark all tests as done" do
        it "returns an empty incomplete list" do
            todo_list = TodoList.new
            todo1 = Todo.new("Walk the dog")
            todo2 = Todo.new("Wash the car")
            todo_list.add(todo1)
            todo_list.add(todo2)
            todo_list.give_up!
            expect(todo_list.incomplete).to eq []
        end
    end
end