class CreateArsip < ActiveRecord::Migration[5.2]
  def change
    create_table :arsip do |t|
      t.string :judul
      t.text :keterangan

      t.timestamps
    end
  end
end
