class Todo
  def initialize
    @todo_list = []
  end

  def show
    return @todo_list.join("\n")
  end

  def add(todo)
    @todo_list.push(todo)
  end

  def remove(todo)
    @todo_list.delete(todo)
  end
end
