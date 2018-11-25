require 'rails_helper'

RSpec.describe Todo, '#completed', type: :model do
  it 'return true if completed_at is set' do
    todo = Todo.new(completed_at: Time.current)

    expect(todo).to be_completed
  end

  it 'return false if completed_at is nil' do
    todo = Todo.new(completed_at: nil)

    expect(todo).not_to be_completed
  end
end

RSpec.describe Todo, '#complete!', type: :model do
  it 'update completed_at' do
    todo = Todo.create!(title: 'xxx', completed_at: nil)

    todo.complete!

    todo.reload

    expect(todo).to be_completed
  end
end

RSpec.describe Todo, '#mark_incomplete!', type: :model do
  it 'sets completed_at to nil' do
    todo = Todo.create!(title: 'xxx', completed_at: Time.current)

    todo.mark_incomplete!

    todo.reload

    expect(todo).not_to be_completed
  end
end
