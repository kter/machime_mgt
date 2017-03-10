class CreatePcs < ActiveRecord::Migration[5.0]
  def change
    create_table :pcs do |t|
      t.integer :classification
      t.string :name
      t.string :cpu
      t.integer :memory
      t.integer :disk_class
      t.integer :disk
      t.string :mac_address
      t.string :ip_address
      t.text :note

      t.timestamps
    end
  end
end
