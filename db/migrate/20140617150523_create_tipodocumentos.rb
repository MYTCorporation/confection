class CreateTipodocumentos < ActiveRecord::Migration
  def change
    create_table :tipodocumentos do |t|
      t.string :CC
      t.string :TI
      t.string :CE

      t.timestamps
    end
  end
end
