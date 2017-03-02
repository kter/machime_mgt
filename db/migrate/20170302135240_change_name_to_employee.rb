class ChangeNameToEmployee < ActiveRecord::Migration[5.0]
  def up
    add_column :employees, :first_name, :string
    add_column :employees, :last_name, :string
  end

  def down
    remove_column :employees, :first_name, :string
    remove_column :employees, :last_name, :string
  end
end
