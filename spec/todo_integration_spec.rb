require_relative '../class_programs2/todo_list.rb'
require_relative '../class_programs2/todo.rb'

RSpec.describe "integration" do
  context("adding a todo") do
    it("returns it as incomplete") do
      todo_list = TodoList.new()
      todo_1 = Todo.new("get milk")
      todo_list.add(todo_1)
      expect(todo_list.incomplete).to eq([todo_1])
    end
  end

  context("adding multiple todos") do
    it("returns elements as incomplete") do
      todo_list = TodoList.new()
      todo_1 = Todo.new("get milk")
      todo_2 = Todo.new("fight bear")
      todo_3 = Todo.new("cook dinner")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_list.add(todo_3)
      todo_3.mark_done!
      expect(todo_list.incomplete).to eq([todo_1, todo_2])
    end
  end

  context("adding multiple todos") do
    it("returns elements as complete") do
      todo_list = TodoList.new()
      todo_1 = Todo.new("get milk")
      todo_2 = Todo.new("fight bear")
      todo_3 = Todo.new("cook dinner")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_list.add(todo_3)
      todo_3.mark_done!
      expect(todo_list.complete).to eq([todo_3])
    end
  end

  context("adding multiple todos marking them complete") do
    it("returns all todos") do
      todo_list = TodoList.new()
      todo_1 = Todo.new("get milk")
      todo_2 = Todo.new("fight bear")
      todo_3 = Todo.new("cook dinner")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_list.add(todo_3)
      todo_list.give_up!
      expect(todo_list.complete).to eq([todo_1, todo_2, todo_3])
    end
  end
end