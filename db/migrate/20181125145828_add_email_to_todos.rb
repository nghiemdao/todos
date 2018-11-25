class AddEmailToTodos < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :email, :string, null: false, default: ''
  end
end
