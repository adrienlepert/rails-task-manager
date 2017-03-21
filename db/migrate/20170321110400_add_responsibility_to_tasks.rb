class AddResponsibilityToTasks < ActiveRecord::Migration[5.0]
  def change
      add_column :tasks, :responsibility, :string
  end
end
