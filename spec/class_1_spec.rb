require_relative "../class_programs/class_1.rb"

RSpec.describe Todo do
  it("adds and shows the todos in the todo list") do
    todo = Todo.new()
    todo.add("get milk")
    result = todo.show()
    expect(result).to eq("get milk")
  end

  it("adds another element to the todo list") do
    todo = Todo.new()
    todo.add("get milk")
    todo.add("fight bear")
    result = todo.show()
    expect(result).to eq("get milk\nfight bear")
  end

  it("removes an element from the todo list") do
    todo = Todo.new()
    todo.add("get milk")
    todo.add("fight bear")
    todo.remove("fight bear")
    result = todo.show()
    expect(result).to eq("get milk")
  end
end
