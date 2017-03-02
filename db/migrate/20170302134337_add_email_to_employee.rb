class AddEmailToEmployee < ActiveRecord::Migration[5.0]
  def up
    add_column :employees, :email, :string
  end

  def down
    remove_column :employees, :email, :string
  end
end
