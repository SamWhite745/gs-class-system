require 'todo'

describe Todo do
  it "initializes the todo task as an object" do
    todo_task = Todo.new("laundry")
    expect(todo_task.task).to eq "laundry"
  end
end