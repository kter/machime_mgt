class CreatePcSoftwares < ActiveRecord::Migration[5.0]
  def change
    create_table :pc_softwares do |t|
      t.reference :pc
      t.reference :software

      t.timestamps
    end
  end
end
