module TodoHelper
  def complete_button(todo)
    if todo.completed?
      button_to 'Mark incomplete', todo_completion_path(todo), method: :delete
    else
      button_to 'Mark complete', todo_completion_path(todo)
    end
  end
end
