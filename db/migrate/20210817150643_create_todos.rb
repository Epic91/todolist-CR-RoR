class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :task
      t.string :name

      t.timestamps
    end
  end
end
