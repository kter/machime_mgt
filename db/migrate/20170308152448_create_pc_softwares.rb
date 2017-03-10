class CreatePcSoftwares < ActiveRecord::Migration[5.0]
  def change
    create_table :pc_softwares do |t|
      t.references :pc
      t.references :software

      t.timestamps
    end
  end
end
