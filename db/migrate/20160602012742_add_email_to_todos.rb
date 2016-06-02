class AddEmailToTodos < ActiveRecord::Migration
  def up
    add_column :todos, :email, :string
  end

  def down
    remove_column :todos, :email
  end
end
