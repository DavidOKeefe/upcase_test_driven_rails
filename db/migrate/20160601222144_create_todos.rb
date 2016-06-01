class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :subject

      t.timestamps null: false
    end
  end
end
