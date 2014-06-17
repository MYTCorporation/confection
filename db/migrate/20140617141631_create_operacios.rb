class CreateOperacios < ActiveRecord::Migration
  def change
    create_table :operacios do |t|
      t.string :area
      t.string :cantidadProceso
      t.string :maquinas
      t.string :tiposTelas
      t.string :TiempoEstandar
      t.string :instructorCargo
      t.string :insumos
      t.string :Referencia
      t.string :Descripcion

      t.timestamps
    end
  end
end
