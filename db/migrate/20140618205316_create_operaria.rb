class CreateOperaria < ActiveRecord::Migration
  def change
    create_table :operaria do |t|
      t.references :Tipodocumentos, index: true
      t.string :Numerodocumento
      t.string :Nombres
      t.string :Apellidos
      t.boolean :Genero
      t.string :Direccion
      t.string :Correo
      t.string :Telefono
      t.string :Celular
      t.string :DirectorArea
      t.references :instructors, index: true
      t.string :Calificacion
      t.string :Inicial
      t.string :Fecha
      t.date :Inicio
      t.string :Fecha
      t.date :Final

      t.timestamps
    end
  end
end
