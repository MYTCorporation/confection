class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.references :tipodocumento, index: true
      t.string :numedoc
      t.string :nombre
      t.string :apellido
      t.boolean :genero
      t.string :direccion
      t.string :correo
      t.string :telefono
      t.string :area
      t.string :rol
      t.string :lineacargo

      t.timestamps
    end
  end
end
