require_relative '../class_programs2/todo.rb'

RSpec.describe Todo do
  context("given a task") do
    it("returns it as string") do
      todo_1 = Todo.new("get milk")
      expect(todo_1.task).to eq("get milk")
    end
  end

  it("changes done to true") do
    todo_1 = Todo.new("get milk")
    todo_1.mark_done!
    expect(todo_1.done?).to eq(true)
  end

  it("returns false if not done") do
    todo_1 = Todo.new("get milk")
    expect(todo_1.done?).to eq(false)
  end
end