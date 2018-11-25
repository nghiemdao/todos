require 'rails_helper'

RSpec.describe Todo, '#completed', type: :model do
  it 'return true if completed_at is not nil' do
    todo = Todo.new(completed_at: Time.current)

    expect(todo).to be_completed
  end

  it 'return false if completed_at is nil' do
    todo = Todo.new(completed_at: nil)

    expect(todo).not_to be_completed
  end
end
