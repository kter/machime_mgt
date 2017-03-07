class CreatePcSoftwares < ActiveRecord::Migration[5.0]
  def change
    create_table :pc_softwares do |t|
      t.references :pc, index: true, null: false
      t.references :software, index: true, null: false

      t.timestamps
    end
  end
end
