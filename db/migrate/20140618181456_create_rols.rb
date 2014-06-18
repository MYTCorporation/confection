class CreateRols < ActiveRecord::Migration
  def change
    create_table :rols do |t|
      t.string :Administrador
      t.string :Instructor
      t.string :Aprendiz

      t.timestamps
    end
  end
end
